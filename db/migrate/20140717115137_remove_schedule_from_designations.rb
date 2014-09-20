class RemoveScheduleFromDesignations < ActiveRecord::Migration
  def change
    remove_column :designations, :schedule, :datetime
  end
end
