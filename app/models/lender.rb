class Lender < ActiveRecord::Base
  attr_accessible :name
  
  has_many :investments
  has_many :loans, through: :investments
  
  validates_presence_of :name
end
