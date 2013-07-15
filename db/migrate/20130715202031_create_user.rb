class CreateUser < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.string :email
      t.string :password_hash
      t.timestamps
    end
  end

  def down
  end
end
