class CreateLoans < ActiveRecord::Migration
  def change
    create_table :loans do |t|
      t.string :loan_url
      t.string :title
      t.date :date_started
      t.integer :loan_duration_in_days
      t.integer :payment_cycle_in_days
      t.float :interest_in_percent
      t.float :loan_amount_in_btc
      t.float :amount_repaid_in_btc
      t.float :amount_due_in_btc
      t.integer :days_late
      t.text :loan_description_by_borrower

      t.timestamps
    end
  end
end
