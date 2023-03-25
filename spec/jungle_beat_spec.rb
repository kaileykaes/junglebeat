require 'spec_helper'

RSpec.describe JungleBeat do
  before(:each) do
    @jb = JungleBeat.new
  end

  describe '#initialize' do 
    it 'exists' do
      expect(@jb).to be_a(JungleBeat)
    end

    it 'has an empty list' do 
      expect(@jb.list).to be_a(LinkedList)
      expect(@jb.list.head).to eq(nil)
    end
  end

  describe '#append' do 
    it 'appends nodes' do
      @jb.append("deep doo ditt")
      
      expect(@jb.list.head.data).to eq('deep')
      expect(@jb.list.head.next_node.data).to eq('doo')
    end
  end

  describe '#count' do 
    it 'counts nodes in its list' do 
      @jb.append("deep doo ditt")
      @jb.append("woo hoo shu")
      expect(@jb.count).to eq(6)
    end
  end

  describe '#play' do 
    it '' do
      @jb.append("deep doo ditt woo hoo shu")
      expect{ @jb.play }.to output{a_string_including(“deep doo ditt woo hoo shu”)}.to_stdout_from_any_process
    end
  end
end