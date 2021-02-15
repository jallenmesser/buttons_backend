class CreateCombinationButtons < ActiveRecord::Migration[6.0]
  def change
    create_table :combination_buttons do |t|
      t.references :combination, null: false, foreign_key: true
      t.references :button, null: false, foreign_key: true

      t.timestamps
    end
  end
end
