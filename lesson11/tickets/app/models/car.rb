class Car < ActiveRecord::Base
  belongs_to :train , class_name: 'Train', foreign_key: :car_id
end
