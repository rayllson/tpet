class CreateDesignationsUsers < ActiveRecord::Migration
  def change
    create_table :designations_users do |t|
      t.references :designation, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
