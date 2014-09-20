class AddCongregationToVisitForms < ActiveRecord::Migration
  def change
    add_reference :visit_forms, :congregation, index: true
  end
end
