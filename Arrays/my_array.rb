class MyArray
  attr_accessor :data
  private :data # so data is not directly accessible

  def initialize
    @data = {}
  end

  def get(index)
    data[index]
  end

  def push(val)
    data[data.size] = val
  end

  def pop
    return if data.empty?

    data.delete(data.size - 1)
  end

  def size
    data.size
  end
  
  def delete_at_index(index)
    return unless (0...data.size).include?(index)

    value = get(index)
    shift_item(index)
    data.delete(data.size-1)
    value
  end

  def to_s
    "[#{data.values.join(', ')}]"
  end

  def inspect
    data.values
  end

  private def shift_item(index)
    for i in (index...data.size-1)
      data[i] = data[i+1]
    end
  end
end
