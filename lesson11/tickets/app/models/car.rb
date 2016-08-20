class Car < ActiveRecord::Base
  validates :car_type, presence: true

  belongs_to :train
end
