class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :diaries

  def self.search(search)
    if search != ""
      User.joins(:diary).where('title LIKE(?)', "%#{search}%")
    else
      User.all
    end
  end
end
