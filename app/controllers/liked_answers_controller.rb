class LikedAnswersController < ApplicationController
  before_action :set_liked_answer, only: [:show, :edit, :update, :destroy]

  # GET /liked_answers
  # GET /liked_answers.json
  def index
    @liked_answers = LikedAnswer.all
  end

  # GET /liked_answers/1
  # GET /liked_answers/1.json
  def show
  end

  # GET /liked_answers/new
  def new
    @liked_answer = LikedAnswer.new
  end

  # GET /liked_answers/1/edit
  def edit
  end

  # POST /liked_answers
  # POST /liked_answers.json
  def create
    @liked_answer = LikedAnswer.new(liked_answer_params)

    respond_to do |format|
      if @liked_answer.save
        format.html { redirect_to @liked_answer, notice: 'Liked answer was successfully created.' }
        format.json { render :show, status: :created, location: @liked_answer }
      else
        format.html { render :new }
        format.json { render json: @liked_answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /liked_answers/1
  # PATCH/PUT /liked_answers/1.json
  def update
    respond_to do |format|
      if @liked_answer.update(liked_answer_params)
        format.html { redirect_to @liked_answer, notice: 'Liked answer was successfully updated.' }
        format.json { render :show, status: :ok, location: @liked_answer }
      else
        format.html { render :edit }
        format.json { render json: @liked_answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /liked_answers/1
  # DELETE /liked_answers/1.json
  def destroy
    @liked_answer.destroy
    respond_to do |format|
      format.html { redirect_to liked_answers_url, notice: 'Liked answer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_liked_answer
      @liked_answer = LikedAnswer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def liked_answer_params
      params.require(:liked_answer).permit(:answer_id, :user_id)
    end
end
