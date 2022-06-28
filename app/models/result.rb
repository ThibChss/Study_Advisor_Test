class Result < ApplicationRecord
  belongs_to :user
  belongs_to :quizz
  validates :score, presence: true
end
