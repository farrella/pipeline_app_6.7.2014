class Loanterm < ActiveRecord::Base

belongs_to :client
has_many :quotes

end
