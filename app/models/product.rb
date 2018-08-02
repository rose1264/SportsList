class Product < ApplicationRecord
  belongs_to :category
  has_one :deal
  has_many :buyers, through: :deal, :class_name => 'User'
  has_one :seller, through: :deal, :class_name => 'User'
  has_many :likes, dependent: :destroy
  has_many :users, through: :likes

  mount_uploaders :avatars, AvatarUploader
  serialize :avatars, JSON
  validates :name, presence: true
  validates :category_id, presence: true
  validates :description, presence: true, length: {minimum: 2}
  validates :price, presence: true
  validates :location, presence: true
  validates :avatars, presence: true
end
