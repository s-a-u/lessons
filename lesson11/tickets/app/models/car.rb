class Car < ActiveRecord::Base
  belongs_to :train
  validates :car_type, presence: true
end
