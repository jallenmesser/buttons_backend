class CreateDifficultyButtons < ActiveRecord::Migration[6.0]
  def change
    create_table :difficulty_buttons do |t|
      t.references :difficulty, null: false, foreign_key: true
      t.references :button, null: false, foreign_key: true

      t.timestamps
    end
  end
end
