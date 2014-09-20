class AddSendedUserToVisitForms < ActiveRecord::Migration
  def change
    add_column :visit_forms, :sended_user_id, :integer
  end
end
