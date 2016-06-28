load 'Module.rb'
load 'Train.rb'
load 'PassangerTrain.rb'
load 'CargoTrain.rb'
load 'Car.rb'
load 'PassCar.rb'
load 'CargoCar.rb'


t1 =PassangerTrain.new(:d111)
t2 = CargoTrain.new(:dsa123)
 
 puts Train.find(:dsa123)

t2.add_car(CargoCar.new)
t2.add_car(CargoCar.new)
t1.add_car(PassCar.new)
t2.del_car(CargoCar.new)

t2.show_cars
t1.show_cars

load 'RailwayStation.rb'
k = RailwayStation.new(:Kiev)
m = RailwayStation.new(:Minsk)
d = RailwayStation.new(:Dnepr)
h = RailwayStation.new(:Kharkov)
puts RailwayStation.all_stations
puts k.trains,m.trains

load 'Route.rb'
r = Route.new(k,m)
r.add_station(d)
r.add_station(h)

t2.add_route(r)
t2.next_station
t2.next_station
t2.fabricant
c1 = CargoCar.new
c1.fabricant
puts t2.show_station

    Train.instance_of? PassangerTrain # вернёт true если train пассажирский