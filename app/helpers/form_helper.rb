module FormHelper
  def setup_borrower(borrower)
    borrower.loans.build
    borrower
  end
end