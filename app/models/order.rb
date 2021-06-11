class Order < ApplicationRecord
  default_scope { order(created_at: :desc) }
  belongs_to :user
  belongs_to :client
  has_many :products, through: :product_orders
  accepts_nested_attributes_for :products, reject_if: :all_blank, allow_destroy: true
end
