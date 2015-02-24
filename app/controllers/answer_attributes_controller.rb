class AnswerAttributesController < ApplicationController
  skip_before_action :authorize

  def update
    answer = Answer.find(params[:answer_id])
    liked_answer = LikedAnswer.find_by user_id: session[:user_id], answer_id: answer.id
    if liked_answer.nil?
      answer_attribute = answer.answer_attribute
      answer_attribute.like += 1
      answer_attribute.save!
      LikedAnswer.create(user_id: session[:user_id], answer_id: answer.id)
      respond_to do |format|
        format.js {
          @answer_id = params[:answer_id]
          @updatedCount = answer_attribute.like
        }
      end
    end
  end

  def destroy
    answer_attribute = Answer.find(params[:answer_id]).answer_attribute
    answer_attribute.like -= 1
    answer_attribute.save!
    respond_to do |format|
      format.js {
        @answer_id = params[:answer_id]
        @updatedCount = answer_attribute.like
      }
    end
  end
end