class CreateWatchLists < ActiveRecord::Migration[5.2]
  def change
    create_table :watch_lists do |t|
      t.string :name
      t.integer :user_id
      t.integer :anime_id

      t.timestamps
    end
  end
end
