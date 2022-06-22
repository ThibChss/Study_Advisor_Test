class AddDifficultyToQuizzs < ActiveRecord::Migration[7.0]
  def change
    add_column :quizzs, :difficulty, :string
  end
end
