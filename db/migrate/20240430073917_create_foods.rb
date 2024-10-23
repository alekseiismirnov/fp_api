class CreateFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.integer :proteins
      t.integer :fats
      t.integer :carbs

      t.timestamps
    end
  end
end
