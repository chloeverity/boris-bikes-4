require 'docking_station'

describe DockingStation do
it {is_expected.to respond_to :release_bike }

it "releases working bike" do
  docking_station = DockingStation.new
  bike = docking_station.release_bike
  expect(bike).to be_working
end
it "dock's a bike" do
  bike = Bike.new
  docking_station = DockingStation.new
  docking_station.dock(bike)
  expect(docking_station.dock(bike)).to eq bike
end
end
