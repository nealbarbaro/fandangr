class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.integer :price
      t.string :row
      t.string :seat
      t.integer :user_id
      t.integer :showtime_id

      t.timestamps
    end
  end
end
