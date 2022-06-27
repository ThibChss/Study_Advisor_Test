class Quizz < ApplicationRecord
  has_many :questions, dependent: :destroy
  has_many :answers, through: :questions
  has_many :results
  validates_length_of :questions, maximum: 3
end
