class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.decimal :price, precision: 5, scale: 2, default: 0
      t.boolean :published, default: false

      t.timestamps
    end
  end
end
