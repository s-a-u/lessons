load 'Fabricant.rb'
load 'Train.rb'
load 'PassangerTrain.rb'
load 'CargoTrain.rb'
load 'Car.rb'
load 'PassCar.rb'
load 'CargoCar.rb'


t1 =PassangerTrain.new('d11-a2')
t2 = CargoTrain.new(:dsa23)
  
t2.add_car(CargoCar.new)
t2.add_car(CargoCar.new)
t2.add_car(PassCar.new)
t2.del_car(CargoCar.new)

puts Train.find(:d1111).class
puts CargoTrain.find(:dsa23)

t2.show_cars

puts t1.valid?

load 'RailwayStation.rb'
k = RailwayStation.new(:Kiev)
m = RailwayStation.new(:Minsk)
d = RailwayStation.new(:Dnepr)
h = RailwayStation.new(:Kharkov)
puts RailwayStation.all_stations

puts k.class,m.class

load 'Route.rb'
r = Route.new(k,m)
r.add_station(d)
r.add_station(h)
puts r.valid?

t2.add_route(r)
t2.next_station
t2.next_station
t2.fabricant

t2.install_fabricant(:GM)
puts t2.fabricant
puts t2.show_station

    Train.instance_of? PassangerTrain # вернёт true если train пассажирский