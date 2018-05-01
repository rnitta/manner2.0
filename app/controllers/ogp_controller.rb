# frozen_string_literal: true
class OgpController < ApplicationController
  def tw_subject
    text = 'Hello, World'
    size = 30
    img = Magick::Image.read('app/frontend/img/tw_subject.png')[0]
    draw = Magick::Draw.new
    draw.annotate(img, 0, 0, 50, 100 + size, text) do
      self.font = 'Verdana-Bold'
      self.fill = '#000'
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
