class CreateTimetableWeekDays < ActiveRecord::Migration
  def self.up
    create_table :timetable_week_days do |t|
      t.column   :name, :string
    end
  end

  def self.down
    drop_table :timetable_week_days
  end
end
