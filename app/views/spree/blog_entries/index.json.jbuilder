json.array!(@blog_entries) do |blog_entry|
  json.title blog_entry.title
  json.main_image blog_entry.blog_entry_image ? asset_url(blog_entry.blog_entry_image.attachment.url(:large)) : nil
  json.subtitle blog_entry.subtitle
  json.byline blog_entry.byline
  json.permalink blog_entry.permalink
  json.visible blog_entry.visible
  json.published_at blog_entry.published_at
  json.summary blog_entry.summary
  json.categories blog_entry.category_list

  json.sections do
    json.array!(blog_entry.blog_entry_sections) do |section|
      json.layout section.layout
      json.body section.body
      json.blog_entry_section_images section.blog_entry_section_images
      json.vae_products section.vae_products.map(&:id)
    end
  end
end



