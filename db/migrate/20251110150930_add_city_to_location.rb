class AddCityToLocation < ActiveRecord::Migration[8.0]
  def change
    add_column :locations, :city, :string
  end
end
