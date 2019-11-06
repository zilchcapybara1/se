json.extract! health_record, :id, :name, :birthday, :diagnosis, :recorded_by, :history, :created_at, :updated_at
json.url health_record_url(health_record, format: :json)
