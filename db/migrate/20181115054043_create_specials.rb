class CreateSpecials < ActiveRecord::Migration[5.2]
  def change
    create_table :specials do |t|
      t.references :restaurant, foreign_key: true
      t.integer :day_id
      t.string :name
      t.string :comment
      t.datetime :start_time
      t.datetime :end_time
      t.string :category
    end
  end
end
