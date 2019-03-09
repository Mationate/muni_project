class Feedback < ApplicationRecord
  belongs_to :user
  belongs_to :proyect
  #has_one :answer, dependent: :destroy
  validates :content, presence: true
end
