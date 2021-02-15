class CreateUserCombinations < ActiveRecord::Migration[6.0]
  def change
    create_table :user_combinations do |t|
      t.references :combination, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :time
      t.integer :attempts

      t.timestamps
    end
  end
end
