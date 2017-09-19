class CreateRobbyDates < ActiveRecord::Migration
  def change
    create_table :robby_dates do |t|
      t.boolean :future
      t.date :cuddle_time

      t.timestamps null: false
    end
  end
end
