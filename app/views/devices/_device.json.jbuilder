json.extract! device, :id, :name, :make, :mode, :color, :size, :created_at, :updated_at
json.url device_url(device, format: :json)
