class CreateFeatures < ActiveRecord::Migration[6.0]
  def change
    create_table :features do |t|
      t.integer :length
      t.integer :weight
      t.integer :age
      t.integer :goalweight
      t.integer :goaldate
      t.references :user, foregin_key: true
      t.timestamps
    end
  end
end
