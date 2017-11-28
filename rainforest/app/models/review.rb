class Review < ApplicationRecord
  validates :comment,  presence: true
  
end
