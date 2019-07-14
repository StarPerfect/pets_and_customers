class Pet
  attr_reader :name, :type

  def initialize(details)
    @name = details[:name]
    @type = details[:type]
    @fed = false
  end

  def fed?
    @fed
  end

  def feed
    @fed = true
  end
end
