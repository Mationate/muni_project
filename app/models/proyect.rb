class Proyect < ApplicationRecord
  belongs_to :municipality
  has_many :feedbacks, dependent: :destroy
  validates :title, :description, :budget, :address, :start_date, :finish_date, presence: true
  geocoded_by :address
  after_validation :geocode
  def self.finished_by_day  
    group_by_day(:finish_date).count 
  end
end
