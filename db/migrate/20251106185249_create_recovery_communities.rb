class CreateRecoveryCommunities < ActiveRecord::Migration[8.0]
  def change
    create_table :recovery_communities do |t|
      t.string :name
      t.string :description
      t.string :acronym

      t.timestamps
    end
  end
end
