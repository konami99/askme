class AnswerAttributesController < ApplicationController
  skip_before_action :authorize

  def update
    aa = Answer.find(params[:answer_id]).answer_attribute
    aa.like += 1
    aa.save!
    respond_to do |format|
      format.js { @answer_id = params[:answer_id] }
    end

  end

  def show

    s = 1
  end
end