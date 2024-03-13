json.extract! detail, :id, :name, :release_date, :main_actor, :director, :genres, :created_on, :updated_on
json.url detail_url(detail, format: :json)
