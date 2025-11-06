class CreateLocations < ActiveRecord::Migration[8.0]
  def change
    create_table :locations do |t|
      t.string :street_address
      t.string :province
      t.string :country
      t.decimal :lat
      t.decimal :long

      t.timestamps
    end
  end
end
