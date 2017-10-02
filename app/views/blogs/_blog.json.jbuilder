json.extract! blog, :id, :title, :hero_pic, :created_at, :updated_at
json.url blog_url(blog, format: :json)
