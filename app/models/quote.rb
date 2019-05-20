class Quote < ApplicationRecord
	validates :saying, presence: true, length: { maximum: 140, minimum: 3 }
	validates :author, presence: true, length: { maximum: 50,  minimum: 3 }
	validates :youtube_id, format: { with: /\A[0-9a-zA-Z]{0,20}\z/ }
end
