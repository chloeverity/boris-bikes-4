require_relative 'bike'
class DockingStation
  attr_reader :bike
  def release_bike
    fail "there are no bikes" unless @bike
    @bike
  end
  def dock(bike)
    @bike = bike
  end
end
