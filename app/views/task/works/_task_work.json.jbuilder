json.extract! task_work, :id, :name, :description, :task_id, :created_at, :updated_at
json.url task_work_url(task_work, format: :json)
