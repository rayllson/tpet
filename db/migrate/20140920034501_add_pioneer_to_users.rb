class AddPioneerToUsers < ActiveRecord::Migration
  def change
    add_column :users, :pioneer, :boolean
    add_column :users, :congregation_function, :integer
  end
end
