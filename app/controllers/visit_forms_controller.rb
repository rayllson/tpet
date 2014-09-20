class VisitFormsController < ApplicationController
  before_action :set_visit_form, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!
  # GET /visit_forms
  # GET /visit_forms.json
  def index
    @visit_forms = VisitForm.all
  end

  # GET /visit_forms/1
  # GET /visit_forms/1.json
  def show
  end

  # GET /visit_forms/new
  def new
    @visit_form = VisitForm.new
  end

  # GET /visit_forms/1/edit
  def edit
  end

  # POST /visit_forms
  # POST /visit_forms.json
  def create
    @visit_form = VisitForm.new(visit_form_params)

    respond_to do |format|
      if @visit_form.save
        format.html { redirect_to @visit_form, notice: 'Visit form was successfully created.' }
        format.json { render :show, status: :created, location: @visit_form }
      else
        format.html { render :new }
        format.json { render json: @visit_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /visit_forms/1
  # PATCH/PUT /visit_forms/1.json
  def update
    respond_to do |format|
      if @visit_form.update(visit_form_params)
        format.html { redirect_to @visit_form, notice: 'Visit form was successfully updated.' }
        format.json { render :show, status: :ok, location: @visit_form }
      else
        format.html { render :edit }
        format.json { render json: @visit_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /visit_forms/1
  # DELETE /visit_forms/1.json
  def destroy
    @visit_form.destroy
    respond_to do |format|
      format.html { redirect_to visit_forms_url, notice: 'Visit form was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_visit_form
      @visit_form = VisitForm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def visit_form_params
      params.require(:visit_form).permit(:name, :address, :city, :state, :cep, 
                                         :phone, :language, :sex, :user_id, :form_date, 
                                         :observations, :congregation_id, :sended_user_id)
    end
end
