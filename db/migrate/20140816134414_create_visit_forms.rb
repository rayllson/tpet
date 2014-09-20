class CreateVisitForms < ActiveRecord::Migration
  def change
    create_table :visit_forms do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :cep
      t.string :phone
      t.string :language
      t.string :sex
      t.references :user, index: true
      t.date :form_date
      t.text :observations

      t.timestamps
    end
  end
end
