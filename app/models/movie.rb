class Movie < ApplicationRecord

	has_many :chats, dependent: :destroy

	def self.search(search)
		if search
			Movie.where(['title LIKE ?', "%#{search}%"])
		else
			Movie.all
		end
	end
end
