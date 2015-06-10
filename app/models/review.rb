class Review < ActiveRecord::Base
  belongs_to :restaurant
  validates :restaurant, presence: true
  validates :rating, numericality: {only_integer: true}, inclusion: {in: 0..5}
  validates :content, presence: true, allow_nil: false
end
