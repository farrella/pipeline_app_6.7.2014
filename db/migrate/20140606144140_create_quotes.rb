class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.string :loan_terms_id
      t.string :product
      t.float :rate
      t.float :markup
      t.integer :est_fee
      t.integer :premium
      t.text :notes

      t.timestamps

    end
  end
end
