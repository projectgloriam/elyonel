class ProductOrder < ApplicationRecord
  default_scope { order(created_at: :desc) }
  belongs_to :product
  belongs_to :order
end
