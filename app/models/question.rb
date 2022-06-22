class Question < ApplicationRecord
  belongs_to :quizz
  has_many :answers, dependent: :destroy
  validates_length_of :good_answer, maximum: 4
end
