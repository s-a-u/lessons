class Train < ActiveRecord::Base
  validates :number, presence: true
  belongs_to :current_station, class_name: 'RailwayStation', foreign_key: :current_station_id
  belongs_to :route
  has_many :cars, dependent: :destroy
  # validates :car_number, uniqueness: true
  validate :cars_count
  before_validation :set_number


  private

  def set_number
    self.car_number = "#{cars.first}"
  end

  def cars_count
    if cars.size < 0
      errors.add(:base,"Train should contain at least 0 car")
    end
  end
end