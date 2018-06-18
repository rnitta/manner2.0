# frozen_string_literal: true
module ApplicationHelper
  def admin?
    # 管理権限をチェック
    redirect_to root_path unless current_user&.admin
  end

  def default_meta_tags
    {
      site: Settings.site.name,
      reverse: true,
      title: Settings.site.page_title,
      description: Settings.site.page_description,
      keywords: Settings.site.page_keywords,
      canonical: request.base_url + request.path,
      og: {
        title: Settings.site.page_title,
        type: Settings.site.meta.ogp.type,
        url: request.original_url,
        image: request.base_url + Settings.site.meta.ogp.image_path,
        site_name: Settings.site.name,
        description: :description,
        locale: 'ja_JP'
      },
      twitter: {
        card: 'summary_large_image'
      }
    }
  end

  def subject_meta_tags(subject)
    {
      og: {
        title: "#{subject.title}を教えてください。 | #{Settings.site.name}",
        type: Settings.site.meta.ogp.type,
        url: subject_url(subject),
        image: ogp_url(subject.id) + '.png',
        site_name: Settings.site.name,
        description: :description,
        locale: 'ja_JP'
      }
    }
  end
end
