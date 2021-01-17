class Bicycle
  attr_reader :size # <- promoted from RoadBike

  def initialize(args={})
    @size = args[:size] # <- promoted from RoadBike
  end
end

class RoadBike < Bicycle
  attr_reader :tape_color

  def initialize(args)
    @tape_color = args[:tape_color]
    super(args) # <- RoadBike now MUST send 'super'
  end
end

road_bike = RoadBike.new(
  size: 'M',
  tape_color: 'red'
)

road_bike.size # -> 'M'

mountain_bike = MountainBike.new(
  size: 'S',
  front_shock: 'Manitou',
  rear_shock: 'Fox'
)

mountain_bike.size # -> 'S'
