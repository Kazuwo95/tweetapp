class Blog < ApplicationRecord
  validates :content, presence: true
  validates :content, length: { in: 1..140 }

  belongs_to :user, optional: true
  has_many :favorites, dependent: :destroy
  has_many :favorite_users, through: :favorites, source: :user
end
