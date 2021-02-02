# Load packages
library("TCGAbiolinks")
library("limma")
library("edgeR")
library("glmnet")
library("factoextra")
library("FactoMineR")
library("caret")
library("SummarizedExperiment")
library("gplots")
library("survival")
library("survminer")
library("RColorBrewer")
library("gProfileR")
library("genefilter")
library(RTCGA.clinical)

query_TCGA = GDCquery(
  project = "TCGA-BRCA",
  data.category = "Transcriptome Profiling", # parameter enforced by GDCquery
  experimental.strategy = "RNA-Seq",
  workflow.type = "HTSeq - Counts")

GDCdownload(query = query_TCGA)

brca = GDCprepare(query_TCGA)

colnames(brca)

table(brca$sample_type) 

design = model.matrix(~ colData(brca)$patient)

dge = DGEList(counts=assay(brca),
                 samples=colData(brca)$patient,
                 genes=as.data.frame(rowData(brca)))

dge = calcNormFactors(dge)
v = voom(dge, design, plot=TRUE)

saveRDS(v,"v_brca_james.rds")

expr <- v$E
rownames(expr) <- v$genes[,2]

plot(density(expr[rownames(expr) == "CDKN2A",]))
plot(density(expr[rownames(expr) == "TRIM32",]))



###
clinical <- GDCquery_clinic(project = "TCGA-BRCA", type = "clinical")
#######################
brca_clinical = data.frame(times = clinical$days_to_last_follow_up,
                           bcr_patient_barcode = clinical$bcr_patient_barcode,
                           patient.vital_status = clinical$vital_status)

brca_clinical$patient.vital_status = as.character(brca_clinical$patient.vital_status)

brca_clinical$times[brca_clinical$patient.vital_status == "dead"] <- clinical$days_to_death[brca_clinical$patient.vital_status == "dead"]
# alive=0 and dead=1
brca_clinical$patient.vital_status[brca_clinical$patient.vital_status=="Alive"] = 0
brca_clinical$patient.vital_status[brca_clinical$patient.vital_status=="Dead"] = 1

cdkn2a_patients = expr[rownames(expr) == "TRIP12",]

plot(density( cdkn2a_patients ))

brca_clinical <- data.frame(brca_clinical, cdkn2a = NA)
brca_clinical$patient.vital_status <- as.numeric(brca_clinical$patient.vital_status)

high_cdkn2a<-names(cdkn2a_patients[cdkn2a_patients>8])
high_cdkn2a <- data.frame( do.call( rbind, strsplit( high_cdkn2a, '-' ) ) )
high_cdkn2a <- paste(high_cdkn2a[,1],high_cdkn2a[,2],high_cdkn2a[,3],sep="-")
           
low_cdkn2a<-names(cdkn2a_patients[!cdkn2a_patients>8])
low_cdkn2a <- data.frame( do.call( rbind, strsplit( low_cdkn2a, '-' ) ) )
low_cdkn2a <- paste(low_cdkn2a[,1],low_cdkn2a[,2],low_cdkn2a[,3],sep="-")
   
brca_clinical[brca_clinical[,2] %in% high_cdkn2a,4] <- "High TRIP12"
brca_clinical[brca_clinical[,2] %in% low_cdkn2a,4] <- "Low TRIP12"

brca_clinical$cdkn2a <- as.factor(brca_clinical$cdkn2a)

kmTCGA(brca_clinical, explanatory.names = "cdkn2a",  pval = TRUE, risk.table=FALSE,conf.int=F, palette = c("red","blue"))
