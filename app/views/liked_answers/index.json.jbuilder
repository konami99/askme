json.array!(@liked_answers) do |liked_answer|
  json.extract! liked_answer, :id, :answer_id, :user_id
  json.url liked_answer_url(liked_answer, format: :json)
end
