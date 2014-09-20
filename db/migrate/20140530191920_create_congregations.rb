class CreateCongregations < ActiveRecord::Migration
  def change
    create_table :congregations do |t|
      t.string :name
      t.string :address

      t.timestamps
    end
  end
end
