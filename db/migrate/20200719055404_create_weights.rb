class CreateWeights < ActiveRecord::Migration[6.0]
  def change
    create_table :weights do |t|
      t.integer :dailyweight
      t.references :user, foreign_key: true
      t.references :feature, foreign_key: true
      t.timestamps
    end
  end
end
