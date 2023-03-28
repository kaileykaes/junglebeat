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
      until present_node.next_node == nil
        present_node = present_node.next_node 
      end
      present_node.next_node = Node.new(data) 
    end
  end
  
  def count 
    counter = 1
    if @head == nil 
      0 
    else
      present_node = @head 
      until present_node.next_node == nil
        present_node = present_node.next_node 
        counter += 1
      end
    end
    counter
  end
  
  def to_string
    node_data = ''
    present_node = @head 
    until present_node.next_node == nil
      node_data += "#{present_node.data}"
      node_data += ' '
      present_node = present_node.next_node 
    end
    node_data += "#{present_node.data}"
  end

  def prepend(data)
    present_node = Node.new(data)
    present_node.next_node = @head
    @head = present_node
  end

  def insert(position, data)
    if @head == nil
      @head = Node.new(data)
    else 
      present_node = @head
      (position - 1).times do 
        present_node = present_node.next_node
      end
      saved_node = present_node.next_node
      present_node.next_node = Node.new(data) 
      present_node.next_node.next_node = saved_node
    end
  end

  def find(position, amount)
    node_data_container = []
    present_node = @head
    position.times do 
      present_node = present_node.next_node
    end
    amount.times do 
      node_data_container << present_node.data
      present_node = present_node.next_node
    end
    node_data_container.join(' ')
  end

  def includes?(node_data) 
    present_node = @head 
    if present_node.data == node_data 
      true
    else
      until present_node.next_node == nil
        true if present_node.data == node_data
        present_node = present_node.next_node
      end
    end
    present_node.data == node_data 
  end

  def pop
    prior_node = @head
    present_node = @head.next_node
    until present_node.next_node == nil
      present_node = present_node.next_node
      prior_node = prior_node.next_node
    end
    saved_data = present_node.data 
    prior_node.next_node = nil
    saved_data 
  end
end