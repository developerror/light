class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :email
      t.string :password_digest
      t.string :publishing

      t.timestamps
    end
  end
end
