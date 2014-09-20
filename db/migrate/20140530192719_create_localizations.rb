class CreateLocalizations < ActiveRecord::Migration
  def change
    create_table :localizations do |t|
      t.string :name
      t.string :address

      t.timestamps
    end
  end
end
