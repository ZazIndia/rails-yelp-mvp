class Review < ApplicationRecord
  validates :content, presence: { message: 'must be given please' }
  validates :rating, numericality: true, presence: true, inclusion: { in: 0..5 }
  belongs_to :restaurant
end
