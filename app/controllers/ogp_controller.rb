# frozen_string_literal: true
class OgpController < ApplicationController

  def show
    @subject = Subject.find(params[:id])
    tw
  end

  private

  def tw
    img = Magick::Image.read('app/frontend/img/tw_subject.png')[0]
    img.format = 'png'
    draw = Magick::Draw.new
    draw.annotate(img, 1200, 630, 600, 300, I18n.t(:subject, title: @subject.title)) do
      self.font = 'app/frontend/font/appmincho.otf'
      self.fill = '#000'
      self.align = Magick::CenterAlign
      self.stroke = 'transparent'
      self.pointsize = 50
      self.text_antialias = true
    end
    draw.annotate(img, 1200, 630, 1100, 120, 'まなー2.0') do
      self.font = 'app/frontend/font/appmincho.otf'
      self.fill = '#AAD6EC'
      self.align = Magick::RightAlign
      self.stroke = 'transparent'
      self.pointsize = 50
      self.text_antialias = true
    end

    send_data img.to_blob, type: 'image/png', disposition: 'inline'
  end
end
