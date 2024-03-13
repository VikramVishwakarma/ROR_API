class CreateDetails < ActiveRecord::Migration[7.1]
  def change
    create_table :details do |t|
      t.string :name
      t.date :release_date
      t.string :main_actor
      t.string :director
      t.string :genres
      t.datetime :created_on
      t.datetime :updated_on

      t.timestamps
    end
  end
end
