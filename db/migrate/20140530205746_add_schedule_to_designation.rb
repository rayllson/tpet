class AddScheduleToDesignation < ActiveRecord::Migration
  def change
    add_column :designations, :schedule, :datetime
  end
end
