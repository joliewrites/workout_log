class Workout < ApplicationRecord
  has_many :exercises, dependent: :destroy

  validates :date, presence: true
  validates :workout, presence: true
end
