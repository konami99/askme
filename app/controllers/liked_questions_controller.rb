class LikedQuestionsController < ApplicationController
  before_action :set_liked_question, only: [:show, :edit, :update]

  # GET /liked_questions
  # GET /liked_questions.json
  def index
    @liked_questions = LikedQuestion.all
  end

  # GET /liked_questions/1
  # GET /liked_questions/1.json
  def show
  end

  # GET /liked_questions/new
  def new
    @liked_question = LikedQuestion.new
  end

  # GET /liked_questions/1/edit
  def edit
  end

  # POST /liked_questions
  # POST /liked_questions.json
  def create
    if (Question.find(params[:question_id]).user_id != session[:user_id]) && (LikedQuestion.where({question_id: params[:question_id], user_id: session[:user_id]}).empty?)
      @liked_question = LikedQuestion.new(question_id: params[:question_id], user_id: session[:user_id])
      question = Question.find(params[:question_id])
      respond_to do |format|
        if @liked_question.save
          format.html { redirect_to question_url(question) }
          format.json { render :show, status: :created, location: @liked_question }
        else
          format.html { render :new }
          format.json { render json: @liked_question.errors, status: :unprocessable_entity }
        end
      end
    else
      respond_to do |format|
        format.json { head :no_content }
      end
    end

  end

  # PATCH/PUT /liked_questions/1
  # PATCH/PUT /liked_questions/1.json
  def update
    respond_to do |format|
      if @liked_question.update(liked_question_params)
        format.html { redirect_to @liked_question, notice: 'Liked question was successfully updated.' }
        format.json { render :show, status: :ok, location: @liked_question }
      else
        format.html { render :edit }
        format.json { render json: @liked_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /liked_questions/1
  # DELETE /liked_questions/1.json
  def destroy
    LikedQuestion.delete_all(["question_id=? AND user_id=?", params[:id], session[:user_id]])
    question = Question.find(params[:id])
    respond_to do |format|
      format.html { redirect_to question_url(question) }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_liked_question
      @liked_question = LikedQuestion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    #def liked_question_params
    #  params.require(:liked_question).permit(:question_id, :user_id)
    #end
end
