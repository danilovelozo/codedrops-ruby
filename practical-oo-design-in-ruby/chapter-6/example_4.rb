class Bicycle
  # This class is now empty.
  # All code has been moved to RoadBike
end

class RoadBike < Bicycle
  # Now a sublcass of Bicycle
  # Contains all code from the old Bicycle class.
end

class MountainBike < Bicycle
  # Still a subclass of Bicycle (which is now empty)
  # Code has not changed.
end
