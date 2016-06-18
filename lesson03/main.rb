load 'train.rb'

t1 =Train.new(1,:pass,5)
t2 = Train.new(2,:cargo,10)
puts t1,t2

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
puts t1

t1.add_route(r)
t1.next_station



puts t1.show_station