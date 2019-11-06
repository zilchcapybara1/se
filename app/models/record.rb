class Record < ApplicationRecord
	validates :order, presence:true
	validates :name, presence:true
	validates :phone, presence:true
	validates :email, format: {with: /.*@.*/}
	
end
