class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.string :code
      t.integer :stock

      t.timestamps null: false
    end
  end
end
