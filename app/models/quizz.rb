class Quizz < ApplicationRecord
  has_many :questions, dependent: :destroy
  has_many :answers, through: :questions
  validates_length_of :questions, maximum: 3
end
