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
  + **Closed Walk** Starts and ends at same vertex.
    + **Length** is determined by the number of edges
    + **Simple Cycle** a walk with no repetition other than start and end

**Weighted(cost)**
+ value of the edge
+ Heavily affects the most optimal route from one node to another

**Unweighted**
+ weighted graph in which all edges have the same weight or no weight
+ Most Optimal path is determined by the number of nodes traversed

**Edge List**
+ Store the indices of the vertices of where they appear in the vertex list.
+ Store the weight
+ Space Complexity O(|E|)
+ Time complexity for finding adjacent nodes is O(|E|)
+ Check if given nodes are connected O(|E|)

**Vertex List**
+ Store the string reference of the vertex
+ Space Complexity => 0(|V|)

**Adjacency Matrix**
+ Length of the amount of your vertices
+ A Matrix that shows where each vertex has a connection with another
+ An undirected graph will have an adjacency matrix that is split symmetrically so you would only have to traverse through half.
+ A directed graph would have to traverse the entire graph.
+ Finding adjacent Nodes
  + Need to know a nodes index by scanning |V|
  + Can then scan the adjacency matrix at the found index to find all adjacent nodes
  + O(v) + O(v) time complexity 
+ Finding if two nodes are connected or not
  + O(v) due to the same reason as above.
+ You can use a hash to store the names and the indexes for the adjacency matrix to make it O(1) time.
+ Uses o(v ** 2) memory which is good if a graph is dense but bad if it is sparse


**Adjacency List**
+ Adjacency Matrix stores redundant information (stores what vertices are not connected to other vertices)
+ Just stores the indices of where a vertex is connected to in an array
+ Space now becomes O(e) instead of O(v ** 2) which is much smaller in real world applications
+ Finding if two nodes are connected or not
  + O(v) linear search
+ Finding adjacent Nodes
  + O(v) linear search
+ Even though the time complexity may seem worse, it is actually most likely less in real world applications.
(Input link to example here)

+ Problem comes with inserting and deleting. In a matrix, you can just flip a 0 to a 1, but in an Adjacency List you have to create a new array with a new length in order to push the index of the new edge into the Adjancency list.

Using a Linked List for an Adjacency List
  + Each vertex's set of edges would require a Linked List to point to the next edge.
  + The head would store a reference to the first node. Each node would store it's index in the vertex list, its weight if applicable, and a pointer to the next node. 
  + Space complexity O(|E| + |V|)
Possibly use a binary Search Tree?


**DFS**
+ Uses a stack
+ Push the vertex onto the stack, mark it as visted, visit it's next child
+ If you have no more children to visit then pop the node off of the stack, and move on to the next node on top of the stack, and keep repeating this till you have a node to move to.

**BFS**
+ Uses a queue
+ Visit a node, mark it visited but do not add the first node to the queue.
+ Visit first child, still have a marker on your first node, then enqueue the first child.
+ Move to the next children and repeat this procedure until there is no more children. Then finally enqueue the first node
+ Dequeue the next on your queue and repeat what you did for the first node enqueuing the children but keeping a pointer on the parent.




source = [A Gentle Introduction to Graphs](https://medium.com/basecs/a-gentle-introduction-to-graph-theory-77969829ead8)