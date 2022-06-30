class Quizz < ApplicationRecord
  DIFFICULTY = %w[easy medium hard]
  has_many :questions, dependent: :destroy
  has_many :answers, through: :questions
  has_many :results
  validates_length_of :questions, maximum: 3
  validates :difficulty, acceptance: { accept: DIFFICULTY }
end
