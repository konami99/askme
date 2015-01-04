class WelcomeController < ApplicationController
  def index
    @questions = Question.includes(:question_status).where('question_statuses.name = ?', 'Open').references(:question_status).order(created_at: :desc).limit(8)
  end
end