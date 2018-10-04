# Graphs
Trees
+ basically created from graphs
+ can only flow in one direction
+ can only have one-way connections
+ can't have loops or cyclical links

Graphs
+ Have to have at least one single. **Singleton Graph** is a graph with only one node.
+ Directed graphs and Undirected Graphs
+ Edges (sometimes called links) can connect nodes in any way possible
+ **G = (V, E)** with v and e being sets
+ |V| number of vertices
+ |E| number of edges
+ Facebook is an example of an undirected graph.
+ Twitter is an example of a directed graph.
+ Nodes can be completely disconnected in a graph
+ **Strongly connected Graphs** are directed graphs where there is a path from any vertex to any other vertex.

**Directed Edge**
+ Two nodes connected in a specific way.
+ Starting node is called the origin and the one were traveling to is called the destination.
+ Can only travel from the origin to the destination.
+ If all edges are directed then the graph is called a **digraph**

**Undirected Edge**
+ Path between two nodes is bidirectional(the origin and destination nodes are not fixed).
+ If all edges are undirected then the graph is referred to as a **undirected graph**.

**Self-Edge(Self-loop)**
  + Involves only one vertex
  + Can be in both Directed and Undirected graphs
  + Example would be a webpage that has a link to itself.

**MultiEdge**
  + Occurs more than once in a graph.
  + Can be in both Directed and Undirected graphs
  + Example would be multiple flights between two cities

**Simple Graph**
  + A graph with no self-loops or multiedges
  + Simple directed graph the max number of edges is determined by `0 <= |E| <= n(n-1)`
  + A simple undirected would be `0 <= |E| <= (n(n-1)) / 2`
  + Graph is considered **Dense** if it has close to the max number of edges
    + Typically store a dense graph in an adjacency matrix
  + Graph is considered **Sparse** if it is close to the min number of edges
    + Typically store a sparse graph in an adjacency list

**Path (walk)**
  + A sequence of vertices where each adjacent pair is connected by an edge.
  + **Simple Path (or just path)** is where no vertices or edges are repeated
  + **Trail** - a walk in which no edges are repeated


**Weighted(cost)**
+ value of the edge
+ Heavily affects the most optimal route from one node to another

**Unweighted**
+ weighted graph in which all edges have the same weight or no weight
+ Most Optimal path is determined by the number of nodes traversed


source = [A Gentle Introduction to Graphs](https://medium.com/basecs/a-gentle-introduction-to-graph-theory-77969829ead8)