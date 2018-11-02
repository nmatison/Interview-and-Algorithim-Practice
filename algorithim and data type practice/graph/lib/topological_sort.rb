require_relative 'graph'

# Implementing topological sort using both Khan's and Tarian's algorithms


#Khan's algorithim
def topological_sort(vertices)
  #khan
  list = []
  queue = []
  vertices.each do |vertex|
    if vertex.in_edges.empty?
      queue.push(vertex)
    end
  end

  until queue.empty?
    u = queue.pop
    neighbors = []

    dup = u.out_edges.dup
    dup.each do |edge|
      neighbors.push(edge.to_vertex)
      edge.destroy!
    end
    

    neighbors.each do |vertex|
      if vertex.in_edges.length < 1
        queue.push(vertex)
      end
    end

    list.push(u)
  end

  list.length == vertices.length ? list : []
end
