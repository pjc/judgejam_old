class Loan < ActiveRecord::Base
  attr_accessible :amount_due_in_btc, :amount_repaid_in_btc, :date_started, :days_late, :interest_in_percent, :loan_amount_in_btc, :loan_description_by_borrower, :loan_duration_in_days, :loan_url, :payment_cycle_in_days, :title
  belongs_to :loan
end
