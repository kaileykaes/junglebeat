require 'spec_helper'

RSpec.describe Node do
  before(:each) do
    @node = Node.new('plop')
  end

  it 'exists' do
    expect(@node).to be_a(Node)
  end

  it 'has attributes' do 
    expect(@node.data).to eq('plop')
  end
end