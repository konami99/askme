class WelcomeController < ApplicationController
  skip_before_action :authorize, only: [:index]

  def index
    @questions = Question.includes(:question_status, :user).where('question_statuses.name = ?', 'Open').references(:question_status).order(created_at: :desc).limit(8)
    #@question = Question.order(:id)
  end
end