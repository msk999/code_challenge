json.extract! question, :id, :question, :answer, :distractor1, :distractor2, :distractor3, :created_at, :updated_at
json.url question_url(question, format: :json)