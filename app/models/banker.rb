class Banker < ActiveRecord::Base

has_many :clients
belongs_to :marketer

end
