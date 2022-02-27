class CreateUserProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :user_profiles do |t|
      t.string :first_name
      t.string :last_name
      t.integer :building_number
      t.text :address
      t.string :zip_code
      t.string :city
      t.date :date_of_birth
      t.references :user, null: false, foreign_key: true, index: true

      t.timestamps
    end
  end
end
