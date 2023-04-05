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

    it 'only appends nodes for valid data' do 
      @jb.append('crack deep frack click doop gof pof hjk;')
      expect(@jb.list.to_string).to eq('crack deep frack click doop gof pof')
    end
  end

  describe '#validate?' do 
    it 'validates data' do 
      expect(@jb.validate?('crack')).to be true 
      expect(@jb.validate?('frop')).to be false
    end
  end

  describe 'node data split' do 
    it '#split_node_data' do 
      expect(@jb.split_node_data('deep bop la')).to eq(['deep', 'bop', 'la'])
    end
  end

  describe '#count' do 
    it 'counts nodes in its list' do 
      @jb.append("deep doo ditt")
      @jb.append("woo hoo shu")
      expect(@jb.count).to eq(6)
    end
  end

  describe '#prepend' do 
    it 'prepends nodes' do 
      jb1 = JungleBeat.new("deep")
      jb1.prepend("tee tee tee Mississippi")
      expect(jb1.all).to eq('tee tee tee deep')
    end
  end

  describe '#all' do 
    it '#all' do 
      jb1 = JungleBeat.new("deep")
      jb1.append("Mississippi")
      expect(jb1.all).to eq('deep')
      jb1.prepend("tee tee tee Mississippi")
      expect(jb1.all).to eq("tee tee tee deep")
    end
  end

  xdescribe 'speed & voice' do 
    it 'rate' do 
      jb1 = JungleBeat.new("deep dop dop deep")
      expect(jb1.rate).to eq(500)
      jb1.rate = 100
      expect(jb1.rate).to eq(100)
      jb1.play
    end

    it 'voice' do 
      jb1 = JungleBeat.new("deep dop dop deep")
      expect(jb1.voice).to eq('boing')
      jb1.voice = 'Daniel'
      expect(jb1.voice).to eq('Daniel')
      jb1.play
    end

    it '#reset_voice' do 
      jb1 = JungleBeat.new("deep dop dop deep")
      expect(jb1.voice).to eq('boing')
      jb1.voice = 'Daniel'
      expect(jb1.voice).to eq('Daniel')
      expect(jb1.reset_voice).to eq('boing')
      jb1.play
    end
  end
end