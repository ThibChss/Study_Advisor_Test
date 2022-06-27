class RemoveColumnGoodAnswerFromQuestions < ActiveRecord::Migration[7.0]
  def change
    remove_column :questions, :good_answer
  end
end
