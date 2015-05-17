class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :name
      t.string :kingdom
      t.string :a_class
      t.string :phylum

      t.timestamps null: false
    end
  end
end
