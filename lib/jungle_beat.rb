class JungleBeat
  attr_reader :list
              :sound
  
  def initialize(sound = '')
    @list = LinkedList.new
    @sound = append(sound)
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

  def all
    @list.to_string
  end

  def prepend(datas)
    node_data = datas.split(' ')
    node_data.map do |data|
      @list.prepend(data) if validate?(data)
    end
  end

  #helpers

  def validate?(data)
    ['crack', 'woo', 'tee', 'hoo', 'shu', 
      'deep', 'ditt', 'frack', 'doo', 
      'click', 'doop', 'gof', 'pof'].include?(data)
  end
end
