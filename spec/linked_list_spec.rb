require 'spec_helper'

RSpec.describe LinkedList do
  before(:each) do
    @list = LinkedList.new
  end

  describe '#initialize' do 
    it 'exists' do
      expect(@list).to be_a(LinkedList)
    end
    it '#head' do 
      expect(@list.head).to eq(nil)
    end
  end

  describe '#append' do 
    it '#append 1 node' do 
      @list.append('doop')
      expect(@list.head).to be_a(Node)
      expect(@list.head.data).to eq('doop')
      expect(@list.head.next_node).to eq(nil)
    end
    
    it '#append >1 node' do 
      @list.append('doop')
      @list.append('deep')
      expect(@list.head.next_node).to be_a(Node)
      expect(@list.head.next_node.data).to eq('deep')
      expect(@list.count).to eq(2)
    end
  end

  describe '#count' do 
    it 'counts 1 node' do
      @list.append('doop')
      expect(@list.count).to eq(1)
    end

    it 'counts 2 nodes' do 
      @list.append('doop')
      @list.append('deep')
      expect(@list.count).to eq(2)
    end
  end
  
  describe '#to_string' do 
    it '#to_string with 1 node' do 
      @list.append('doop')
      expect(@list.to_string).to eq('doop')
    end
    
    it '#to_string for multiple nodes' do
      @list.append('doop')
      @list.append('deep')
      expect(@list.to_string).to eq('doop deep')
    end
  end
end