# frozen_string_literal: true
module ApplicationHelper
  def default_meta_tags
    {
      site: Settings.site.name,
      reverse: true,
      title: Settings.site.page_title,
      description: Settings.site.page_description,
      keywords: Settings.site.page_keywords,
      canonical: request.original_url,
      og: {
        title: :title,
        type: Settings.site.meta.ogp.type,
        url: request.original_url,
        image: request.base_url + Settings.site.meta.ogp.image_path,
        site_name: Settings.site.name,
        description: :description,
        locale: 'ja_JP'
      }
    }
  end
end
