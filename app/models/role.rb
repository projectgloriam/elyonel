class Role < ApplicationRecord
	default_scope { order(created_at: :desc) }
	has_many :users
end
