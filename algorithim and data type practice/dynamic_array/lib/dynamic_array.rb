require_relative "static_array"

class DynamicArray
  attr_reader :length

  def initialize
    @length = 0
    @capacity = 8
    @store = StaticArray.new(8)
  end

  # O(1)
  def [](index)
    check_index(index)
    @store[index]
  end

  # O(1)
  def []=(index, value)
    check_index(index)
    @store[index] = value
  end

  # O(1)
  def pop
    check_index(0) if @length == 0
    popped = @store[@length - 1] 
    @store[@length - 1] = nil
    @length -= 1
    popped
  end

  # O(1) ammortized; O(n) worst case. Variable because of the possible
  # resize.
  def push(val)
    if @length == @capacity
      @capacity *= 2
      resize!
    end
    @store[@length] = val 
    @length += 1
    val
  end

  # O(n): has to shift over all the elements.
  def shift
    check_index(0) if @length == 0
    temp = StaticArray.new(@capacity)
    shifted = @store[0]
    i = 1
    while i < @length 
      temp[i - 1] = @store[i]
      i += 1
    end
      @store = temp
      @length -= 1
      shifted
  end

  # O(n): has to shift over all the elements.
  def unshift(val)
    if @length < @capacity 
      temp = StaticArray.new(@capacity)
      temp[0] = val
      i = 1
      while i < @length + 1
        temp[i] = @store[i - 1]
        i += 1
      end
      @store = temp
    else
      @capacity *= 2
      temp = StaticArray.new(@capacity)
      temp[0] = val
      i = 1
      while i < @length + 1
        temp[i] = @store[i - 1]
        i += 1
      end
      @store = temp
    end
    @length += 1
    val
  end

  protected
  attr_accessor :capacity, :store
  attr_writer :length

  def check_index(index)
    raise "index out of bounds" if index >= length
  end

  # O(n): has to copy over all the elements to the new store.
  def resize!
    temp = StaticArray.new(@capacity)
    i = 0
    while i < @length
      temp[i] = @store[i]
      i += 1
    end
    @store = temp
  end
end
