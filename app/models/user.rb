class User < ApplicationRecord
  has_many :purchases, :foreign_key => "buyer_id", :class_name => "Deal"
  has_many :sales, :foreign_key => "seller_id", :class_name => "Deal"
  has_many :products, through: :deals
  has_many :likes
  has_many :products, through: :likes

  validates :name, presence: true
  validates :password_digest, presence: true
  validates :email, presence: true
  validates :avatar, presence: true

  has_secure_password
  mount_uploader :avatar, AvatarUploader
end
