class CreateSpecials < ActiveRecord::Migration[5.2]
  def change
    create_table :specials do |t|
      t.string :name
      t.time :start_time
      t.time :end_time
      t.integer :day_id
      t.references :restaurant, foreign_key: true

      t.timestamps
    end
  end
end
