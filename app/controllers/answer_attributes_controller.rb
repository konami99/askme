class AnswerAttributesController < ApplicationController
  skip_before_action :authorize

  def update
    answer_attribute = Answer.find(params[:answer_id]).answer_attribute
    answer_attribute.like += 1
    answer_attribute.save!
    respond_to do |format|
      format.js {
        @answer_id = params[:answer_id]
        @updatedCount = answer_attribute.like
      }
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