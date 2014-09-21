module ApplicationHelper

  def resource_name
    :user
  end
 
  def resource
    @resource ||= User.new
  end
 
  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  def pioneer?(status)
  	if status == nil || status == false
  		"Não"
  	else
  		"Sim"
  	end
  end

  def congregation_function?(function)
  	if function == 0
  		"Não Listada"
  	elsif function == 1
  		"Ançião"
  	elsif function == 2
  		"Servo Ministerial"
  	end
  end

  def admin?(status)
  	if status == false
  		"Não"
  	else
  		"Sim"
  	end
  end
  
end
