class Diary < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  belongs_to :weather

  with_options presence: true do
    validates :title
    validates :content
    validates :record_day
  end
  validates :weather_id, numericality: {other_than: 1, message: "can't be blank"}
end
