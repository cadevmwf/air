class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :flight_id
      t.integer :user_id
      t.string  :card_number
      t.date    :departs_on

      t.timestamps
    end
  end
end
