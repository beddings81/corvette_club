class Event < ApplicationRecord
  include Rails.application.routes.url_helpers
  after_save :ensure_image_attached

  belongs_to :user

  validates_presence_of :title, :date, :address
  
  has_one_attached :image

  def image_url
    url_for(image)
  end

  def formatted_date
    self.date.strftime("%A %B %I:%M %p")
  end

  private

  def ensure_image_attached
    unless image.attached?
      self.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'default-image.jpeg')), filename: 'default-image.jpeg', content_type: 'image/jpeg')
    end
  end
end