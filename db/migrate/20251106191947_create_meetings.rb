class CreateMeetings < ActiveRecord::Migration[8.0]
  def change
    create_table :meetings do |t|
      t.string :source
      t.datetime :time
      t.string :type
      t.references :recovery_community, null: false, foreign_key: true
      t.references :location, null: true, foreign_key: true
      t.references :join_info, null: true, foreign_key: true

      t.timestamps
    end
  end
end
