class AddScoreToResults < ActiveRecord::Migration[7.0]
  def change
    add_column :results, :score, :integer
  end
end
