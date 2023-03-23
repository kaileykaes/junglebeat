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
    
    it '#next_node' do
      expect(@list.head.next_node)
    end
  end

  describe 'behavior' do 
    it '#append' do 
      @list.append('doop')
      expect(@list.head).to be_a(Node)
      expect(@list.head.data).to eq('doop')
      expect(@list.head.next_node).to eq(nil)
    end

    it '#count' do
      @list.append('doop')
      expect(@list.count).to eq(1)
    end

    it '#to_string' do 
      @list.append('doop')
      expect(@list.to_string).to eq('doop')
    end
  end
end