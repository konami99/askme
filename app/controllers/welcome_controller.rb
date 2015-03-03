class WelcomeController < ApplicationController
  skip_before_action :authorize, only: [:index]

  def index
    @questions = Rails.cache.fetch('recent_questions', :expires_in => 5.minutes){
      Question.includes(:question_status, :user).where('question_statuses.name = ?', 'Open').references(:question_status).order(created_at: :desc).limit(8)
    }
  end
end