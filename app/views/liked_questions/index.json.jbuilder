json.array!(@liked_questions) do |liked_question|
  json.extract! liked_question, :id, :question_id, :user_id
  json.url liked_question_url(liked_question, format: :json)
end
