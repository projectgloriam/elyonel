class Product < ApplicationRecord
	default_scope { order(created_at: :desc) }
	has_many :orders, through: :product_orders
	has_many :productions
	accepts_nested_attributes_for :orders
end
