load 'fabricant.rb'
load 'train.rb'
load 'passanger_train.rb'
load 'cargo_train.rb'
load 'car.rb'
load 'pass_car.rb'
load 'cargo_car.rb'

t1 = PassangerTrain.new('d11-a2')
t2 = CargoTrain.new('ds3-q1')
t2.add_car(CargoCar.new(100))
t2.add_car(CargoCar.new(100))
t1.add_car(PassCar.new(40))
t2.cars[0].occupy_vol(50)
t2.cars[1].occupy_vol(50)

car = CargoCar.new(100)
car.occupy_vol(150)
puts car
Train.find('d11-a2').class
CargoTrain.find('ds3-q1')

load 'railway_station.rb'
k = RailwayStation.new('Kiev')
m = RailwayStation.new('Minsk')
d = RailwayStation.new('Dnepr')
h = RailwayStation.new('Kharkov')
k.class

load 'route.rb'
r = Route.new(k, m)
r.add_station(d)
r.add_station(h)

t2.add_route(r)
t2.next_station
t2.install_fabricant(:GM)
h.add_train(t1)

h.each_train { |train| puts train }

t2.each_car { |c| puts c }

# Train.instance_of? PassangerTrain
# a = proc{ |x| puts x*2}
# a.yield(100)
# a.call(1,2,3,4)
# c = lambda { |x| puts x  }
# c.call(100)
# t2.far{|train| raise "train not Train.class" if !train.is_a?(Train)}
