class Deal < ApplicationRecord
  belongs_to :product
  belongs_to :buyer, :class_name => 'User', :foreign_key => 'buyer_id', optional: true
  belongs_to :seller, :class_name => 'User', :foreign_key => 'seller_id'
  validates :seller_id, presence: true
  validates :product_id, presence: true

  def buyer_name=(name)
    buyer = User.find_by(name: name)
    self.buyer = buyer
  end

  def buyer_name
    self.try(:buyer).try(:name)
  end
end
