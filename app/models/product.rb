class Product < ApplicationRecord
  belongs_to :category
  has_one :deal
  has_many :buyers, through: :deal, :class_name => 'User'
  has_one :seller, through: :deal, :class_name => 'User'
  has_many :likes
  has_many :users, through: :likes
  mount_uploader :avatar, AvatarUploader
end
