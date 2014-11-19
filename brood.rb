class Brood
  attr_reader :faction

  def initialize(faction=".")
    @faction = faction
  end

  def to_s
    faction.to_s
  end
end
