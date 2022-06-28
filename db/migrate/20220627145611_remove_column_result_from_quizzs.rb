class RemoveColumnResultFromQuizzs < ActiveRecord::Migration[7.0]
  def change
    remove_reference :quizzs, :result, index: true, foreign_key: true
    add_reference :results, :quizz, index: true, foreign_key: true, null: false
  end
end
