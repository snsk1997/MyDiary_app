class Diary < ApplicationRecord
  default_scope -> { order(created_at: :desc) }

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  belongs_to :weather
  has_many_attached :images

  with_options presence: true do
    validates :title
    validates :content
    validates :record_day
  end

  validates :weather_id, numericality: {other_than: 1, message: "can't be blank"}

  def was_attached?
    self.images.attached?
  end

  def self.search(search)
    if search != ""
      Diary.where(['title LIKE(?) OR record_day LIKE(?)', "%#{search}%", "%#{search}%"])
    else
      Diary.all
    end
  end
end
