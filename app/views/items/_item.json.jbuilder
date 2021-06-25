json.extract! item, :id, :name, :description, :piicture, :weight, :length, :storage_details, :created_at, :updated_at
json.url item_url(item, format: :json)
