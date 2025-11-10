class AddNameToLocation < ActiveRecord::Migration[8.0]
  def change
    add_column :locations, :name, :string
  end
end
