require 'docking_station'

describe DockingStation do
it {is_expected.to respond_to :release_bike }

describe "#release_bike"
  it "releases working bike" do
    docking_station = DockingStation.new
    bike = Bike.new
    docking_station.dock(bike)
    docking_station.release_bike
    expect(bike).to be_working
  end
  it "releasea a bike " do
    bike = Bike.new
    docking_station = DockingStation.new
    docking_station.dock(bike)
    expect(docking_station.release_bike).to eq bike
  end

it "dock's a bike" do
  bike = Bike.new
  docking_station = DockingStation.new
  docking_station.dock(bike)
  expect(docking_station.dock(bike)).to eq bike
end
it "doesn't release a bike if the station is empty" do
  docking_station = DockingStation.new
  expect{ docking_station.release_bike }.to raise_error "there are no bikes"
end
end
