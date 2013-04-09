class Lender < ActiveRecord::Base
  attr_accessible :name
  
  has_many :investments
  has_many :loans, through: :investments
end
