class Client < ApplicationRecord
	default_scope { order(created_at: :desc) }
	has_many :orders
end
