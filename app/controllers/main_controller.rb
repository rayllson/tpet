class MainController < ApplicationController

  before_filter :authenticate_user!

  def index
  end

  def designations
  	@designations = current_user.designations
  end

  def map
    @markers = Gmaps4rails.build_markers(Localization.all) do |localization, marker|
      marker.lat localization.latitude
      marker.lng localization.longitude
      marker.infowindow "<a href=https://maps.google.com/?q=asa+aa@#{localization.latitude},#{localization.longitude}>#{localization.name}</a>"
    end	
  end

  def visit_form
    @visit_forms = current_user.congregation.visit_forms
  end

  def info
  end

end
