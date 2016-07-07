load 'fabricant.rb'
load 'train.rb'
load 'passanger_train.rb'
load 'cargo_train.rb'
load 'car.rb'
load 'pass_car.rb'
load 'cargo_car.rb'


t1 =PassangerTrain.new('d11-a2')
t2 = CargoTrain.new('ds3-q1')
  
t2.add_car(CargoCar.new(100))
t2.add_car(CargoCar.new(100))
t2.add_car(PassCar.new(40))
t2.del_car(CargoCar.new(100))

puts Train.find('d11-a2').class
puts CargoTrain.find(:dsa23)

puts t2.show_cars
 puts c1 = CargoCar.new(100)
puts c1.occupy_vol(55)
puts c1.free_vol
puts c1.to_s
puts p1 = PassCar.new(40)
p1.occupy_seat
p1.occupy_seat
puts p1.hold_seats
puts p1.free_seats
puts p1

puts t1.valid?

load 'railway_station.rb'
k = RailwayStation.new(:Kiev)
m = RailwayStation.new(:Minsk)
d = RailwayStation.new(:Dnepr)
h = RailwayStation.new(:Kharkov)
puts RailwayStation.all_stations

puts k.class,m.class

load 'route.rb'
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