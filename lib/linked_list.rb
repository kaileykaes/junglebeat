class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(data)
    node = Node.new(data)
    @head = node 
  end

  def count 
    if @head != nil
      1
    else
      0
    end
  end

  def to_string
    @head.data
  end
end