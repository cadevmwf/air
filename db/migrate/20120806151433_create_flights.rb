class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.integer :number
      t.string  :departure_airport_code
      t.time    :departs_at
      t.string  :arrival_airport_code
      t.integer :distance

      t.timestamps
    end
  end
end
