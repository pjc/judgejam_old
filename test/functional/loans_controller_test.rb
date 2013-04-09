require 'test_helper'

class LoansControllerTest < ActionController::TestCase
  setup do
    @loan = loans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:loans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create loan" do
    assert_difference('Loan.count') do
      post :create, loan: { amount_due_in_btc: @loan.amount_due_in_btc, amount_repaid_in_btc: @loan.amount_repaid_in_btc, date_started: @loan.date_started, days_late: @loan.days_late, interest_in_percent: @loan.interest_in_percent, loan_amount_in_btc: @loan.loan_amount_in_btc, loan_description_by_borrower: @loan.loan_description_by_borrower, loan_duration_in_days: @loan.loan_duration_in_days, loan_url: @loan.loan_url, payment_cycle_in_days: @loan.payment_cycle_in_days, title: @loan.title }
    end

    assert_redirected_to loan_path(assigns(:loan))
  end

  test "should show loan" do
    get :show, id: @loan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @loan
    assert_response :success
  end

  test "should update loan" do
    put :update, id: @loan, loan: { amount_due_in_btc: @loan.amount_due_in_btc, amount_repaid_in_btc: @loan.amount_repaid_in_btc, date_started: @loan.date_started, days_late: @loan.days_late, interest_in_percent: @loan.interest_in_percent, loan_amount_in_btc: @loan.loan_amount_in_btc, loan_description_by_borrower: @loan.loan_description_by_borrower, loan_duration_in_days: @loan.loan_duration_in_days, loan_url: @loan.loan_url, payment_cycle_in_days: @loan.payment_cycle_in_days, title: @loan.title }
    assert_redirected_to loan_path(assigns(:loan))
  end

  test "should destroy loan" do
    assert_difference('Loan.count', -1) do
      delete :destroy, id: @loan
    end

    assert_redirected_to loans_path
  end
end
