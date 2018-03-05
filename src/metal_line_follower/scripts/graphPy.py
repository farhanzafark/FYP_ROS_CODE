import matplotlib.pyplot as g_plt
import sys

#sys.path.append("~/Desktop")
import a_star_algorithm

class Vertex:
    def __init__(self, vertex,posX,posY):
        self.name = vertex
        self.neighbors = []
        self.posX = posX
        self.posY = posY
        
    def add_neighbor(self, neighbor):
        if isinstance(neighbor, Vertex):
            if neighbor.name not in self.neighbors:
                self.neighbors.append(neighbor.name)
                neighbor.neighbors.append(self.name)
                self.neighbors = sorted(self.neighbors)
                neighbor.neighbors = sorted(neighbor.neighbors)
        else:
            return False
        
##    def add_neighbors(self, neighbors):
##        for neighbor in neighbors:
##            if isinstance(neighbor, Vertex):
##                if neighbor.name not in self.neighbors:
##                    self.neighbors.append(neighbor.name)
##                    neighbor.neighbors.append(self.name)
##                    self.neighbors = sorted(self.neighbors)
##                    neighbor.neighbors = sorted(neighbor.neighbors)
##            else:
##                return False
    def add_neighbors(self, neighbors):
        for neighbor in neighbors:
            if isinstance(neighbor, Vertex):
                if neighbor not in self.neighbors:
                    self.neighbors.append(neighbor)
                    neighbor.neighbors.append(self)
                    self.neighbors = sorted(self.neighbors,key=lambda name:self.name)
                    neighbor.neighbors = sorted(neighbor.neighbors,key=lambda name:neighbor.name)
            else:
                return False
        
    def __repr__(self):
        return self.neighbors

class Edge:

    def __init__(self,name,vertexFrom,vertexTo,weight):
        self.name = name
        self.vertexFrom = vertexFrom
        self.vertexTo = vertexTo
        self.weight = weight

class Graph:
    def __init__(self):
        self.vertices = []
        self.edges = []
    
    def add_vertex(self, vertex):
        if isinstance(vertex, Vertex):
            self.vertices.append(vertex)

            
    def add_vertices(self, vertices):
        for vertex in vertices:
            if isinstance(vertex, Vertex):
                self.vertices.append(vertex)
            
    def add_edge(self, vertex_from, vertex_to,weight):
        if isinstance(vertex_from, Vertex) and isinstance(vertex_to, Vertex):
            if vertex_to in vertex_from.neighbors: #vertex_from.add_neighbor(vertex_to)
                edge = Edge(vertex_from.name+'_'+vertex_to.name,vertex_from,vertex_to,weight)
                self.edges.append(edge)
                
                
##    def add_edges(self, edges):
##        for edge in edges:
##            self.add_edge(edge[0],edge[1])          
    
    def adjacencyList(self):
        if len(self.vertices) >= 1:
            adjList = {}
            for vertex in self.vertices:
                neighborsList = []
                for neighbor in vertex.neighbors:
                    neighborsList.append(neighbor.name)
                adjList[vertex.name] = neighborsList
            return adjList
##        if len(self.vertices) >= 1:
##                return [str(key) + ":" + str(self.vertices[key]) for key in self.vertices.keys()]  
##        else:
##            return dict()
        
    def adjacencyMatrix(self):
        if len(self.vertices) >= 1:
            self.vertex_names = sorted(grp.vertices.keys())
            self.vertex_indices = dict(zip(self.vertex_names, range(len(self.vertex_names))))
            #print(self.vertex_indices)
            import numpy as np
            self.adjacency_matrix = np.zeros(shape=(len(self.vertices),len(self.vertices)))
            for i in range(len(self.vertex_names)):
                for j in range(i, len(self.vertices)):
                    for el in grp.vertices[self.vertex_names[i]]:
                        j = grp.vertex_indices[el]
                        self.adjacency_matrix[i,j] = 1
            return self.adjacency_matrix
        else:
            return dict()              
                        
def graph(g):
    """ Function to print a graph as adjacency list and adjacency matrix. """
    return g.adjacencyList() #+ '\n' + '\n' + str(g.adjacencyMatrix())


###################################################################################
def init_agv_map():

	a = Vertex('a',3,0)
	b = Vertex('b',3,2)
	c = Vertex('c',0,2)
	d = Vertex('d',0,6)
	e = Vertex('e',0,8)
	f = Vertex('f',3,4)
	g = Vertex('g',3,8)
	h = Vertex('h',6,8)
	i = Vertex('i',6,4)
	j = Vertex('j',6,2)

	xVals = (a.posX,b.posX,c.posX,d.posX,e.posX,f.posX,g.posX,h.posX,i.posX,j.posX)
	yVals = (a.posY,b.posY,c.posY,d.posY,e.posY,f.posY,g.posY,h.posY,i.posY,j.posY)


	a.add_neighbors([b]) 
	b.add_neighbors([a,c,f,j])
	c.add_neighbors([b,d])
	d.add_neighbor([c,e])
	e.add_neighbors([d,g])
	f.add_neighbors([b,g,i])
	g.add_neighbors([e,f,h])
	h.add_neighbors([g,i])
	i.add_neighbors([f,h,j])
	j.add_neighbors([i])

	allVertexList = [a,b,c,d,e,f,g,h,i,j]

	grp = Graph()

	grp.add_vertices([a,b,c,d,e,f,g,h,i,j])

	grp.add_edge(a,b,2)
	grp.add_edge(b,c,3)
	grp.add_edge(b,f,2)
	grp.add_edge(c,d,4)
	grp.add_edge(d,e,2)
	grp.add_edge(e,g,3)
	grp.add_edge(f,g,4)
	grp.add_edge(f,i,3)
	grp.add_edge(g,h,3)
	grp.add_edge(h,i,4)
	grp.add_edge(i,j,2)
	grp.add_edge(b,j,3)
	
	return grp
'''
print(grp.adjacencyList())
print("Shortest Path from h to ja")
route = a_star_algorithm.shortestPath(grp,'i','a')
routeXVals = []
routeYVals = []
for point in route:
    graphMatch = [x for x in grp.vertices if x.name == point]
    routeXVals.append(graphMatch[0].posX)
    routeYVals.append(graphMatch[0].posY)

g_plt.scatter(xVals,yVals)



for vert in allVertexList:
    for neighbor in vert.neighbors:
        g_plt.plot([vert.posX,neighbor.posX],[vert.posY,neighbor.posY],'b-')
        g_plt.annotate(vert.name,[vert.posX,vert.posY],[vert.posX+0.1,vert.posY+0.1],color = 'blue',size=14)

for edge in grp.edges:
    g_plt.annotate(edge.weight,[((edge.vertexFrom.posX+edge.vertexTo.posX)/2)+0.1,(edge.vertexFrom.posY+edge.vertexTo.posY)/2],color = 'blue',size=14)

g_plt.plot(routeXVals,routeYVals,'r--')
g_plt.show()
'''
