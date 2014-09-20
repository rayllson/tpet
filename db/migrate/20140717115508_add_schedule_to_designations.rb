class AddScheduleToDesignations < ActiveRecord::Migration
  def change
    add_column :designations, :schedule, :time
    add_column :designations, :week_day, :string
  end
end
