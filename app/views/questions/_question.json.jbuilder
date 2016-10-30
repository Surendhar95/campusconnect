json.extract! question, :id, :users_id, :body, :description, :tags, :created_at, :updated_at
json.url question_url(question, format: :json)