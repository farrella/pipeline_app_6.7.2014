class CreateMarketers < ActiveRecord::Migration
  def change
    create_table :marketers do |t|
      t.string :name
      t.string :email
      t.string :avatar_url

      t.timestamps

    end
  end
end
