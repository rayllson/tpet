class LocalizationsController < ApplicationController
  
  before_action :set_localization, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!

  def index
    @localizations = Localization.all
    @hash = Gmaps4rails.build_markers(@localizations) do |localization, marker|
      marker.lat localization.latitude
      marker.lng localization.longitude
      marker.infowindow "<a href=https://maps.google.com/?q=asa+aa@#{localization.latitude},#{localization.longitude}>#{localization.name.titleize}</a>"
    end
  end

  def show
  end

  def new
    @localization = Localization.new
  end

  def edit
  end

  def create
    @localization = Localization.new(localization_params)

    respond_to do |format|
      if @localization.save
        format.html { redirect_to @localization, notice: 'Localization was successfully created.' }
        format.json { render :show, status: :created, location: @localization }
      else
        format.html { render :new }
        format.json { render json: @localization.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @localization.update(localization_params)
        format.html { redirect_to @localization, notice: 'Localization was successfully updated.' }
        format.json { render :show, status: :ok, location: @localization }
      else
        format.html { render :edit }
        format.json { render json: @localization.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @localization.destroy
    respond_to do |format|
      format.html { redirect_to localizations_url, notice: 'Localization was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_localization
      @localization = Localization.find(params[:id])
    end

    def localization_params
      params.require(:localization).permit(:name, :address)
    end
end
