json.extract! schedule, :id, :start_date, :end_date, :user_id, :created_at, :updated_at
json.url schedule_url(schedule, format: :json)
