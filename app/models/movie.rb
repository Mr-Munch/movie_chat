class Movie < ApplicationRecord

	has_many :chats, dependent: :destroy
end
