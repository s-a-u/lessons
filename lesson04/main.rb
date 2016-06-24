load 'Train.rb'
load 'PassangerTrain.rb'
load 'CargoTrain.rb'
load 'Car.rb'
load 'PassCar.rb'
load 'CargoCar.rb'

t1 =PassangerTrain.new(1,5)
t2 = CargoTrain.new(2,10)
puts t1,t2
c1 =CargoCar.new
p1 =PassCar.new
puts c1,p1


load 'RailwayStation.rb'

k = RailwayStation.new(:Kiev)
m = RailwayStation.new(:Minsk)
d = RailwayStation.new(:Dnepr)
h = RailwayStation.new(:Kharkov)

puts k.trains,m.trains

load 'Route.rb'
r = Route.new(k,m)
r.add_station(d)
r.add_station(h)
puts r.stations
puts t1,t2

t2.add_route(r)
t2.next_station

t2.del_cars
puts t2.show_station

    Train.instance_of? PassangerTrain # вернёт true если train пассажирский