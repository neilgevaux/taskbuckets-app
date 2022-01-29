json.extract! item, :id, :task_id, :task_name, :task_description, :bucket_id, :bucket_name, :date_added, :deadline, :task_completed, :user_id, :created_at, :updated_at
json.url item_url(item, format: :json)
