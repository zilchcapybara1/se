json.extract! incident, :id, :address, :reported_by, :phone, :date, :details, :created_at, :updated_at
json.url incident_url(incident, format: :json)
