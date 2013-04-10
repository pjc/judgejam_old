class Loan < ActiveRecord::Base
  attr_accessible :amount_due_in_btc, 
                  :amount_repaid_in_btc, 
                  :award_pdf,
                  :borrower_id,
                  :date_started, 
                  :days_late, 
                  :interest_in_percent, 
                  :loan_amount_in_btc, 
                  :loan_description_by_borrower, 
                  :loan_duration_in_days, 
                  :loan_url, 
                  :payment_cycle_in_days, 
                  :title,
                  :lenders_attributes          
  
  belongs_to :borrower
  has_many :investments
  has_many :lenders, through: :investments
  
  # validating everything except for award_pdf and borrower_id
  validates_presence_of :amount_due_in_btc, 
                        :amount_repaid_in_btc, 
                        :date_started, 
                        :days_late, 
                        :interest_in_percent, 
                        :loan_amount_in_btc, 
                        :loan_description_by_borrower, 
                        :loan_duration_in_days, 
                        :loan_url, 
                        :payment_cycle_in_days, 
                        :title
                        
  accepts_nested_attributes_for :lenders
end
