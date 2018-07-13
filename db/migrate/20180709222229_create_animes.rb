class CreateAnimes < ActiveRecord::Migration[5.2]
  def change
    create_table :animes do |t|
      t.string :name
      t.string :description
      t.string :link
      t.timestamps
    end
  end
end
