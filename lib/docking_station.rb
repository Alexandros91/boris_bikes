class DockingStation
  DEFAULT_CAPACITY = 20
  attr_reader :bikes, :capacity

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  def release_bike
    fail 'No bikes available' if empty?
    bikes.pop
  end

  def dock(bike)
    fail 'Dock is full' if full?
    bikes << bike
  end

  private

  def empty?
    bikes.empty?
  end

  def full?
    bikes.count == DEFAULT_CAPACITY
  end
end
