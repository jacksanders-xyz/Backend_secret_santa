class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email_address
      t.references :group, null: false, foreign_key: true
      t.text :interests

      t.timestamps
    end
  end
end
