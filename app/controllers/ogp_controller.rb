# frozen_string_literal: true
class OgpController < ApplicationController
  def tw_subject
    text = 'Hello, World'
    size = 30
    img = Magick::Image.new(1200, 630) { self.background_color = '#336699' }
    img = Magick::ImageList.open('frontend/img/tw_subject.png')
    draw = Magick::Draw.new
    draw.annotate(img, 0, 0, 50, 100 + size, text) do
      self.font = 'Verdana-Bold'
      self.fill = '#FFFFFF'
      self.align = Magick::LeftAlign
      self.stroke = 'transparent'
      self.pointsize = 30
      self.text_antialias = true
      self.kerning = 1
    end
    img.format = 'png'

    send_data img.to_blob, type: 'image/png', disposition: 'inline'
  end
end
