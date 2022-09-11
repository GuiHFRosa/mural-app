json.extract! mural_item, :id, :title, :description, :created_at, :updated_at
json.url mural_item_url(mural_item, format: :json)
