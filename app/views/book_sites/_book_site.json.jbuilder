json.extract! book_site, :id, :title, :page_count, :rating, :created_at, :updated_at
json.url book_site_url(book_site, format: :json)
