class JungleBeat
  attr_reader :list
  
  def initialize
    @list = LinkedList.new
  end

  def append(datas)
    node_data = datas.split(' ')
    node_data.map do |data|
      @list.append(data)
    end
  end
end