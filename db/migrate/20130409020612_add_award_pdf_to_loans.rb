class AddAwardPdfToLoans < ActiveRecord::Migration
  def change
    add_column :loans, :award_pdf, :string
  end
end
