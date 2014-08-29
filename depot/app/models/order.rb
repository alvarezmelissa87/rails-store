class Order < ActiveRecord::Base
  validates :name, :address, :email, presence: true
  validates :pay_type, inclusion: PAYMENT_TYPES
  PAYMENT_TYPES = ["Check", "Credit card", "Purchase order"]
end
