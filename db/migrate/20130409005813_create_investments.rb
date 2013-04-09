class CreateInvestments < ActiveRecord::Migration
  def change
    create_table :investments do |t|
      t.integer :lender_id
      t.integer :loan_id

      t.timestamps
    end
  end
end
