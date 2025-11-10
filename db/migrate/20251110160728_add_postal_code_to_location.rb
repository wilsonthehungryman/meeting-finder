class AddPostalCodeToLocation < ActiveRecord::Migration[8.0]
  def change
    add_column :locations, :postal_code, :string
  end
end
