class CreateDesignations < ActiveRecord::Migration
  def change
    create_table :designations do |t|
      t.references :localization, index: true

      t.timestamps
    end
  end
end
