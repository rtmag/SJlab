
# load packages
import pypath
import igraph  # import igraph to use the plot function

import numpy as np
import pandas as pd
import seaborn as sns

pa = pypath.PyPath()

pa.init_network(pfile = 'cache/default_network.pickle')

# remove links reported in papers with more than 50 interactions (by default)
pa.remove_htp()

query_nodes = set(['DNMT1', 'KAT5', 'TP53'])

for igene in query_nodes:
    # to query a node based on the value of an attribute we can use the igraph find() method
    #prot = pa.graph.vs.find(label=i)['name']
    # if the attribute is the vertex label (genesymbol) we can use pypath's genesymbol() function
    prot = pa.genesymbol(igene)['name']
    #neighbours_of_prot = pa.first_neighbours(prot)
    neighbours_of_prot = list(pa.gs_neighbors(igene).gs())
    print('{} ({}) has {} neighbours:'.format(igene, prot, len(neighbours_of_prot)))
    if len(neighbours_of_prot)<10:
        print(neighbours_of_prot)
    else:
        print('(showing only the first 10 proteins)')
        print(neighbours_of_prot[0:10])
    print('---')
    
    visual_style = {'bbox': (300, 300),
               'margin': 50}
    
    # get neighbourhood graphs for each of the query nodes
subgraph = {}
for igene in query_nodes:
    subgraph[igene] = pa.neighbourhood_network(pa.genesymbol(igene)['name'])
    igraph.plot(subgraph[igene], layout=subgraph[igene].layout_auto(), **visual_style)
 

####
