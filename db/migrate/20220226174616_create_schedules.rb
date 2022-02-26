class CreateSchedules < ActiveRecord::Migration[7.0]
  def change
    create_table :schedules do |t|
      t.date :start_date, default: Date.today
      t.date :end_date, default: Date.today
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
