class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :contact_person
      t.string :contact_email
      t.string :contact_phone
      t.string :metavante_id
      t.string :onboarding_status
      t.integer :marketer_id
      t.text :notes
      t.integer :banker_id

      t.timestamps

    end
  end
end
