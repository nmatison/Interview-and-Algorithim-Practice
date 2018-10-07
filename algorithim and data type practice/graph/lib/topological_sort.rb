require_relative 'graph'

# Implementing topological sort using both Khan's and Tarian's algorithms


#Khan's algorithim
def topological_sort(vertices)
  in_edges = {}
  zero_degree = []
  list = []
  vertices.each do |node| 
    in_edges[node.value] = node.in_edges.length
    zero_degree << node if in_edges[node.value] == 0
  end
  until zero_degree.empty?
    current_node = zero_degree.shift
    temp_nodes = []
    current_node.out_edges.each do |edge|
      to_node = edge.to_vertex
      in_edges[to_node.value] -= 1
      zero_degree << to_node if in_edges[to_node.value] == 0
    end
    list << current_node
  end
  list.map{|node| node.value}
  return list.length == vertices.length ? list : []
end
