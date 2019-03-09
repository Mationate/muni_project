class Proyect < ApplicationRecord
  belongs_to :municipality
  has_many :feedbacks, dependent: :destroy
  validates :title, :description, :budget, :address, :start_date, :finish_date, presence: true
end
