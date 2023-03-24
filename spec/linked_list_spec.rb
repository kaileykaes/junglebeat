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
      @list.append('crack')
      expect(@list.head.next_node).to be_a(Node)
      expect(@list.head.next_node.data).to eq('deep')
    end
  end

  describe '#count' do 
    it 'counts 1 node' do
      @list.append('doop')
      expect(@list.count).to eq(1)
    end

    it 'counts >1 nodes' do 
      @list.append('doop')
      @list.append('deep')
      @list.append('crack')
      expect(@list.count).to eq(3)
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
      @list.append('crack')
      expect(@list.to_string).to eq('doop deep crack')
    end
  end

  describe '#prepend' do 
    it 'adds node to beginning of list' do 
      @list.append('doop')
      @list.append('deep')
      @list.append('crack')
      @list.prepend('dop')
      expect(@list.count).to eq(4)
      expect(@list.head.data).to eq('dop')
      expect(@list.to_string).to eq('dop doop deep crack')
    end
  end
end