class User < ActiveRecord::Base
  has has_many :tickets
end
