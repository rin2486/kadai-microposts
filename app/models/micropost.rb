class Micropost < ApplicationRecord
  belongs_to :user

  validates :content, presence: true, length: { maximum: 255 }
  

#  has_many :user　#Userに向かっては一対多でいいのか
  has_many :favorites
  has_many :favorited, through: :favorites, source: :user
  
  
end