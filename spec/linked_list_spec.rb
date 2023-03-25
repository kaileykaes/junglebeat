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

  describe '#insert' do 
    it 'inserts node at specific position' do 
      @list.append('doop')
      @list.append('deep')
      @list.append('crack')
      @list.append('pof')
      @list.insert(2, 'shush')
      expect(@list.count).to eq(5)
      expect(@list.to_string).to eq('doop deep shush crack pof')
    end
  end

  describe '#find' do 
    it 'finds positions and returns elements' do 
      @list.append('deep')
      @list.append('woo')
      @list.append('shi')
      @list.append('shu')
      @list.append('blop')
      expect(@list.find(2, 1)).to eq('shi')
      expect(@list.find(1, 3)).to eq('woo shi shu')
    end
  end

  describe '#includes' do 
    it 'determines if data included in list' do 
      @list.append('deep')
      @list.append('woo')
      @list.append('shi')
      @list.append('shu')
      @list.append('blop')
      expect(@list.includes?('deep')).to eq(true)
      expect(@list.includes?('dep')).to eq(false)
    end
  end

  describe '#pop' do 
    it 'removes node from list and returns data' do 
      @list.append('deep')
      @list.append('woo')
      @list.append('shi')
      @list.append('shu')
      @list.append('blop')
      expect(@list.pop).to eq('blop')
      expect(@list.to_string).to eq('deep woo shi shu')
      expect(@list.pop).to eq('shu')
      expect(@list.to_string).to eq('deep woo shi')
    end
  end
end