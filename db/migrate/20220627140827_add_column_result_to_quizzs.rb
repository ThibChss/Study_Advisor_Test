class AddColumnResultToQuizzs < ActiveRecord::Migration[7.0]
  def change
    add_reference :quizzs, :result, null: false, foreign_key: true
  end
end
