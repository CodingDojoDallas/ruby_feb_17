class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :name
      t.date :date
      t.string :location_city
      t.string :location_state
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
