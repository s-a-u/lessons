load 'train.rb'

t1 =Train.new(1,:pass,5)
t2 = Train.new(2,:cargo,10)
puts t1,t2,t1.type,t2.type

load 'RailwayStation.rb'
k = RailwayStation.new(:Kiev,t1)
m = RailwayStation.new(:Minsk,t2)
puts k.trains,m.trains

load 'Route.rb'
r = Route.new(:Minsk,:Kiev)
puts r
