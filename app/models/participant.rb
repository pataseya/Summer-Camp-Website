class Participant < ApplicationRecord

	validates :name, presence: true
	validates :age, presence: true
	validates :sex, presence: true
	validates :parent, presence: true
	validates :parentemail, presence: true
	


end
