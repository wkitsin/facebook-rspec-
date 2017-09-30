class Like < ActiveRecord::Base
	validates :status_id, presence: true 
	validates :user_id, presence: true 
	belongs_to :user 
	belongs_to :status
end
