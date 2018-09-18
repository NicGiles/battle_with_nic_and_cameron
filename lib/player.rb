class Player
  attr_reader :name, :hp

  def initialize(name)
    @name = name
    @hp = 400
  end

  def get_attacked
    @hp -= 100
  end

  def lost?
    @hp == 0
  end

end
