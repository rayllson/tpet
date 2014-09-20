class DesignationsController < ApplicationController
  
  before_action :set_designation, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!

  def index
    @designations = Designation.all
  end

  def show
  end

  def new
    @designation = Designation.new
  end

  def edit
  end

  def create
    @designation = Designation.new(designation_params)

    respond_to do |format|
      if @designation.save
        format.html { redirect_to @designation, notice: 'Designation was successfully created.' }
        format.json { render :show, status: :created, location: @designation }
      else
        format.html { render :new }
        format.json { render json: @designation.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @designation.update(designation_params)
        format.html { redirect_to @designation, notice: 'Designation was successfully updated.' }
        format.json { render :show, status: :ok, location: @designation }
      else
        format.html { render :edit }
        format.json { render json: @designation.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @designation.destroy
    respond_to do |format|
      format.html { redirect_to designations_url, notice: 'Designation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_designation
      @designation = Designation.find(params[:id])
    end

    def designation_params
      params.require(:designation).permit(:localization_id, :week_day, :schedule, :user_ids => [])
    end
end
