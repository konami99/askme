class QuestionAttributesController < ApplicationController
  before_action :set_question_attribute, only: [:show, :edit, :update, :destroy]

  # GET /question_attributes
  # GET /question_attributes.json
  def index
    @question_attributes = QuestionAttribute.all
  end

  # GET /question_attributes/1
  # GET /question_attributes/1.json
  def show
  end

  # GET /question_attributes/new
  def new
    @question_attribute = QuestionAttribute.new
  end

  # GET /question_attributes/1/edit
  def edit
  end

  # POST /question_attributes
  # POST /question_attributes.json
  def create
    @question_attribute = QuestionAttribute.new(question_attribute_params)

    respond_to do |format|
      if @question_attribute.save
        format.html { redirect_to @question_attribute, notice: 'Question attribute was successfully created.' }
        format.json { render :show, status: :created, location: @question_attribute }
      else
        format.html { render :new }
        format.json { render json: @question_attribute.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /question_attributes/1
  # PATCH/PUT /question_attributes/1.json
  def update
    respond_to do |format|
      if @question_attribute.update(question_attribute_params)
        format.html { redirect_to @question_attribute, notice: 'Question attribute was successfully updated.' }
        format.json { render :show, status: :ok, location: @question_attribute }
      else
        format.html { render :edit }
        format.json { render json: @question_attribute.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /question_attributes/1
  # DELETE /question_attributes/1.json
  def destroy
    @question_attribute.destroy
    respond_to do |format|
      format.html { redirect_to question_attributes_url, notice: 'Question attribute was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question_attribute
      @question_attribute = QuestionAttribute.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def question_attribute_params
      params.require(:question_attribute).permit(:question_id, :like)
    end
end
