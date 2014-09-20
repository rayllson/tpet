class RemoveAddressFromLocalizations < ActiveRecord::Migration
  def change
    remove_column :localizations, :address, :string
  end
end
