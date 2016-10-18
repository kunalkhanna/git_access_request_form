class Request < ApplicationRecord
	validates :user_action, presence: true
	validates :member, presence: true
end
