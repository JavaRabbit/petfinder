class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :species
      t.string :name
      t.integer :age
      t.text :description
      t.boolean :available

      t.timestamps
    end
  end
end
