class MainController < ApplicationController

  before_filter :authenticate_user!

  def index
    @last_news = Post.last
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
    @without_pioneers_forms = current_user.congregation.visit_forms.where(:user => nil)
    @my_forms = VisitForm.where(:user => current_user)
  end

  def confirm_revisit
    visit_form = VisitForm.find(params[:visit_form_id]).update(:user => current_user)
    redirect_to :back
  end

  def info
  end

  def posts
    @posts = Post.order(:created_at => :desc)
  end


end
