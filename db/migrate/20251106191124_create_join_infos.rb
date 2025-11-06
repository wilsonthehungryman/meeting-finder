class CreateJoinInfos < ActiveRecord::Migration[8.0]
  def change
    create_table :join_infos do |t|
      t.string :link
      t.string :meeting_id
      t.string :meeting_provider
      t.string :password

      t.timestamps
    end
  end
end
