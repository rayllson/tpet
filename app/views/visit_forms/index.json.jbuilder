json.array!(@visit_forms) do |visit_form|
  json.extract! visit_form, :id, :name, :address, :city, :state, :cep, :phone, :language, :sex, :user_id, :form_date, :observations
  json.url visit_form_url(visit_form, format: :json)
end
