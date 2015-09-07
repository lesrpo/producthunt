class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, limit: 100
      t.string :password_digest
      t.string :name, limit: 100
      t.string :twitter_handle, limit: 50

      t.timestamps null: false
    end
  end
end
