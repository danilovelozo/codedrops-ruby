class Gear
  attr_reader :chainring, :cog, :wheel

  def initialize(chainring, cog, wheel=nil)
    @chainring = chainring
    @cog = cog
    @wheel = wheel
  end

  def ratio
    chainring / cog.to_f
  end

  def gear_inches
    ratio * wheel.diameter
  end
end

puts Gear.new(52, 11).ratio # -> 4.72727272727273
puts Gear.new(30, 27).ratio # -> 1.11111111111111
