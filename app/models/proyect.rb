class Proyect < ApplicationRecord
  belongs_to :municipality
  has_many :feedbacks
end
