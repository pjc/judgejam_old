class Borrower < ActiveRecord::Base
  attr_accessible :name
  has_many :loans
end
