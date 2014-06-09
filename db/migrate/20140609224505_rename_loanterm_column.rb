class RenameLoantermColumn < ActiveRecord::Migration
  def change

  	rename_column :quotes, :loan_terms_id, :loanterm_id

  end
end
