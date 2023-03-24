class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(data)
    if @head == nil
      @head = Node.new(data) 
    else
      present_node = @head 
      while present_node.next_node != nil
        present_node = present_node.next_node 
      end
      present_node.next_node = Node.new(data) 
    end
  end
  
  def count 
    tick_marks = 1
    if @head == nil 
      0 
    else
      present_node = @head 
      while present_node.next_node != nil
        present_node = present_node.next_node 
        tick_marks += 1
      end
    end
    tick_marks
  end

  def to_string
    @head.data
  end
end