json.extract! record, :id, :name, :phone, :email, :order, :deadline, :created_at, :updated_at
json.url record_url(record, format: :json)
