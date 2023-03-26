class JungleBeat
  attr_reader :list
  
  def initialize
    @list = LinkedList.new
  end

  def append(datas)
    node_data = datas.split(' ')
    node_data.map do |data|
      @list.append(data) if validate?(data)
    end
  end

  def count
    @list.count
  end

  def play 
    music = @list.to_string
    `say -r 500 -v boing #{music}`
  end

  #helpers
  
  def validate?(data)
    ['crack', 'woo', 'hoo', 'shu', 'deep', 'ditt', 
      'frack', 'doo', 'click', 'doop', 'gof', 'pof'].include?(data)
  end
end
