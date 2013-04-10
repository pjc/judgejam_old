class Borrower < ActiveRecord::Base
  attr_accessible :name, :loans_attributes
  has_many :loans
  
  validates_presence_of :name
  
  accepts_nested_attributes_for :loans
end
