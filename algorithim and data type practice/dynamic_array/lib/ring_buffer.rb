require_relative "static_array"

class RingBuffer
  attr_reader :length

  def initialize
    @capacity = 8
    @length = 0
    @start_idx = 0
    @store = StaticArray.new(@capacity)
  end

  # O(1)
  def [](index)
    check_index(index)
    @store[(index + start_idx) % @capacity]
  end

  # O(1)
  def []=(index, val)
    check_index(index)
    @store[index] = val 
    val
  end

  # O(1)
  def pop
    check_index(0) if @length == 0
  end

  # O(1) ammortized
  def push(val)
  end

  # O(1)
  def shift
    check_index(0) if @length == 0
    shifted = @store[@start_idx]
    @store[@start_idx] = nil
    @start_idx = (@start_idx + 1) % @capacity
    @length -= 1
    shifted
  end

  # O(1) ammortized
  def unshift(val)
    resize! if @length == @capacity
    if @start_idx == 0
      @start_idx = @capacity - 1
      @store[start_idx] = val 
      @length += 1
    else
      @start_idx -= 1
      @store[start_idx] = val
      @length += 1
      val
    end
  end

  protected
  attr_accessor :capacity, :start_idx, :store
  attr_writer :length

  def check_index(index)
    raise "index out of bounds" if index >= @length
  end

  def resize!
    old_capacity = @capacity 
    @capacity *= 2
    @start_idx = @length - 1
    temp = StaticArray.new(@capacity)
    i = 0
    while i < @length 
      temp[i] = @store[i]
      i += 1
    end
  end
end
