class AnswerAttributesController < ApplicationController
  # skip_before_action :authorize

  def update
    answer = Answer.find(params[:answer_id])
    liked_answer = LikedAnswer.find_by user_id: session[:user_id], answer_id: answer.id
    if liked_answer.nil?
      answer_attribute = answer.answer_attribute
      answer_attribute.like = (answer_attribute.like.eql? nil)? 1: (answer_attribute.like+1)

      answer_attribute.save!
      LikedAnswer.create(user_id: session[:user_id], answer_id: answer.id)
      respond_to do |format|
        format.json {
          @result = 1
          @answer_id = params[:answer_id]
          @updatedCount = answer_attribute.like
        }
      end
    else
      respond_to do |format|
        format.json {
          @result = 0

        }
      end
    end
  end

  def destroy
    answer = Answer.find(params[:answer_id])
    disliked_answer = DislikedAnswer.find_by user_id: session[:user_id], answer_id: answer.id
    if disliked_answer.nil?
      answer_attribute = answer.answer_attribute
      answer_attribute.like = (answer_attribute.like.eql? nil)? -1: (answer_attribute.like-1)
      answer_attribute.save!
      DislikedAnswer.create(user_id: session[:user_id], answer_id: answer.id)
      respond_to do |format|
        format.json {
          @result = 1
          @answer_id = params[:answer_id]
          @updatedCount = answer_attribute.like
          z = 22
        }
      end
    else
      respond_to do |format|
        format.json {
          @result = 0

        }
      end
    end
  end
end