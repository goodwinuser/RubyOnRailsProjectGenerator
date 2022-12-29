class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :login
      t.string :password
      t.text :description
      t.text :fio
      t.text :email

      t.timestamps
    end
  end
end
