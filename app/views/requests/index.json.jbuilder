json.array!(@requests) do |request|   
  json.extract! request, :id, :title, :description   
  json.start request.start_date   
  json.end request.end_date   
  json.url request_url(request, format: :html) 
end
