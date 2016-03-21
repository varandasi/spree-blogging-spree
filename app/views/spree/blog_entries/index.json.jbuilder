json.array!(@blog_entries) do |blog_entry|
  json.title blog_entry.title
  json.main_image blog_entry.blog_entry_image ? blog_entry.blog_entry_image.attachment.url(:large) : nil
  json.subtitle blog_entry.subtitle
  json.byline blog_entry.byline
  json.body blog_entry.body
  json.permalink blog_entry.permalink
  json.created_at blog_entry.created_at
  json.updated_at blog_entry.updated_at
  json.visible blog_entry.visible
  json.published_at blog_entry.published_at
  json.summary blog_entry.summary
  json.categories blog_entry.category_list
end

json.set! :meta do
  json.code response.status
end