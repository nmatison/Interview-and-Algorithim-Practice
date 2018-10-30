# There are many ways to implement these methods, feel free to add arguments 
# to methods as you see fit, or to create helper methods.

class BinarySearchTree
  attr_accessor :root

  def initialize
    @root = nil
  end

  def insert(value)
    if @root.nil?
      @root = BSTNode.new(value)
      return @root 
    end

    return insert_helper(root, value)
  end

  def find(value, tree_node = @root)
    return tree_node if tree_node.value == value 
    if value <= tree_node.value
      return tree_node.left.nil? ? nil : find(value, tree_node.left)
    else
      return tree_node.right.nil? ? nil : find(value, tree_node.right)
    end
  end

  def delete(value)
  end

  # helper method for #delete:
  def maximum(tree_node = @root)
    return tree_node.right.nil? ? tree_node : maximum(tree_node.right)
  end

  def depth(tree_node = @root, count = 0)
  end 

  def is_balanced?(tree_node = @root)
  end

  def in_order_traversal(tree_node = @root, arr = [])
  end


  private
  # optional helper methods go here:
  def insert_helper(node, val)
    if val <= node.value
      if node.left.nil?
          node.left = BSTNode.new(val)
          return node.left 
      else 
        return insert_helper(node.left, val)
      end
    else 
      if node.right.nil? 
        node.right = BSTNode.new(val)
        return node.right 
      else 
        return insert_helper(node.right, val)
      end
    end
  end
end
