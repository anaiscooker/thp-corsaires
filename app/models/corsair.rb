class Corsair < ApplicationRecord
	validates :first_name, presence: true
	validates :age, presence: true
end
