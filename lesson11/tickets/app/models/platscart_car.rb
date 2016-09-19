class PlatscartCar < Car
  validates :upper_seates,:lower_seates,:side_upper_seates,:side_lower_seates, presence: true

end