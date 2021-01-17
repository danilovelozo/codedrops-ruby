class MountainBike < Bicycle
  attr_reader :front_shock, :rear_shock

  def initialize(args)
    @front_shock = args[:front_shock]
    @rear_shock = args[:rear_shock]
    super(args)
  end

  def spares
    super.merge(rear_shock: rear_shock)
  end
end

mountain_bike = MountainBike.new(
  size: 'S',
  front_shock: 'Manitou',
  rear_shock: 'Fox'
)

mountain_bike.size # -> 'S'

mountain.spares # -> { tires_size: '23', <- wrong!
#                      chain: '10-speed',
#                      tape_color: nil, <- not_applicable
#                      front_shock: 'Manitou,
#                      rear_shock: 'Fox
#                     }
