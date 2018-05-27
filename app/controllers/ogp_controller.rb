# frozen_string_literal: true
class OgpController < ApplicationController
  require 'RMagick'
  def show
    @subject = Subject.find(params[:id])
    ogp_for_twitter
  end

  private

  def ogp_for_twitter
    img = Magick::Image.read('app/frontend/img/tw_subject.png')[0]
    img.format = 'png'
    draw = Magick::Draw.new
    text = I18n.t(:subject, title: @subject.title)
    points = fontsize(text)
    draw.annotate(img, 1200, 630, 600, 300, text) do
      self.font = 'app/frontend/font/appmincho.otf'
      self.fill = '#000'
      self.align = Magick::CenterAlign
      self.stroke = 'transparent'
      self.pointsize = points
      self.text_antialias = true
    end
    insert_logo(img, draw)

    send_data img.to_blob, type: 'image/png', disposition: 'inline'
  end

  def insert_logo(img, draw)
    draw.annotate(img, 1200, 630, 1100, 120, 'まなー2.0') do
      self.font = 'app/frontend/font/appmincho.otf'
      self.fill = '#AAD6EC'
      self.align = Magick::RightAlign
      self.stroke = 'transparent'
      self.pointsize = 50
      self.text_antialias = true
    end
  end

  def fontsize(text)
    1000 / text.length
  end
end
