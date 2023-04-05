class JungleBeat
  attr_reader :list,
              :sound
  attr_accessor :rate,
                :voice
          
  
  def initialize(sound = '')
    @list = LinkedList.new
    @sound = append(sound)
    @rate = 500
    @voice = 'boing'
  end

  def append(datas)
    split_node_data(datas).map do |data|
      @list.append(data) if validate?(data)
    end
  end
  
  def count
    @list.count
  end
  
  def play 
    `say -r #{@rate} -v #{@voice} #{all}`
    @list.count
  end

  def all
    @list.to_string
  end

  def prepend(datas)
    split_node_data(datas).map do |data|
      @list.prepend(data) if validate?(data)
    end
  end

  def reset_voice
    @voice = 'boing'
  end

  #helpers

  def validate?(data)
    ['crack', 'woo', 'tee', 'hoo', 'shu', 
     'deep', 'ditt', 'frack', 'doo', 'click', 
     'doop', 'gof', 'pof', 'bop', 'boop', 'la', 'na'].include?(data)
  end

  def split_node_data(datas)
    datas.split(' ')
  end
end
