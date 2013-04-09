class Investment < ActiveRecord::Base
  attr_accessible :lender_id, :loan_id
  
  belongs_to :lender
  belongs_to :loan
end
