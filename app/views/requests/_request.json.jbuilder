json.extract! request, :id, :title, :description, :start_date, :end_date, :created_at, :updated_at
json.url request_url(request, format: :json)
