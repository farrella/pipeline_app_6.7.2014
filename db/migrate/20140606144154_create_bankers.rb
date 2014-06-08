class CreateBankers < ActiveRecord::Migration
  def change
    create_table :bankers do |t|
      t.string :name
      t.string :division
      t.string :email
      t.string :phone
      t.integer :marketer_id

      t.timestamps

    end
  end
end
