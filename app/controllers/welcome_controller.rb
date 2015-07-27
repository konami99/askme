class WelcomeController < ApplicationController
  skip_before_action :authorize, only: [:index]

  def index
    @recent_questions = Rails.cache.fetch('recent_questions', :expires_in => 5.minutes){
      Question.includes(:question_status, :user).where('question_statuses.name = ?', 'Open').references(:question_status).order(created_at: :desc).limit(8)
    }

    @most_responses = Question.includes(:user).select("questions.*, (SELECT COUNT(id) FROM answers a WHERE a.question_id=questions.id AND a.created_at > date_sub(now(), interval 7 day) AND a.answer_status_id IN (2,3)) as `NumberOfResponsesInPast7Days`").where("question_status_id=1").order("NumberOfResponsesInPast7Days DESC")
    z = 1
  end
end