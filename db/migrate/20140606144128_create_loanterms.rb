class CreateLoanterms < ActiveRecord::Migration
  def change
    create_table :loanterms do |t|
      t.string :client_id
      t.float :notional
      t.date :maturity
      t.string :term
      t.string :amortization
      t.string :index
      t.float :credit_spread
      t.string :debt_type
      t.string :closing
      t.float :probability
      t.text :notes

      t.timestamps

    end
  end
end
