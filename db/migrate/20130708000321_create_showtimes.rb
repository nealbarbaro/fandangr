class CreateShowtimes < ActiveRecord::Migration
  def change
    create_table :showtimes do |t|
      t.date :date
      t.time :start_time
      t.integer :movie_id

      t.timestamps
    end
  end
end
