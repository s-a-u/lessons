class CoupeCar < Car
  validates :upper_seates,:lower_seates, presence: true
  validates :side_upper_seates,:side_lower_seates,:bucket_seats,presence: false

end