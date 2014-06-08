class Marketer < ActiveRecord::Base

has_many :bankers
has_many :clients
	
end
