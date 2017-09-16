class Micropost < ApplicationRecord
  belongs_to :user
  has_many :favorites
  has_many :rfavoring, through: :favorites, source: :user
  
  
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 255 }
end
