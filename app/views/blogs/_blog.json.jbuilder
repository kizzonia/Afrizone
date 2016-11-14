json.extract! blog, :id, :title, :sub_title, :body, :created_at, :updated_at
json.url blog_url(blog, format: :json)