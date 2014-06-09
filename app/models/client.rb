class Client < ActiveRecord::Base

validates :name, :uniqueness => true


belongs_to :banker
belongs_to :marketer
has_many :loanterms

has_many(:quotes, { :through => :loanterms })

end
