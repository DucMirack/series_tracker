json.extract! review, :id, :description, :user_id, :created_at, :updated_at
json.url review_url(review, format: :json)
