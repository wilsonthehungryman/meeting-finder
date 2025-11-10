class AddWheelchairAccessibleToLocation < ActiveRecord::Migration[8.0]
  def change
    add_column :locations, :wheelchair_accessible, :boolean
  end
end
