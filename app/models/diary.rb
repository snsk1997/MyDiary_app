class Diary < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  belongs_to :weather
  has_many_attached :images

  with_options presence: true do
    validates :title
    validates :content, unless: :was_attached?
    validates :record_day
  end

  def was_attached?
    self.images.attached?
  end
  
  validates :weather_id, numericality: {other_than: 1, message: "can't be blank"}
end
