class CreateAuthors < ActiveRecord::Migration[6.0]
  def change
    create_table :authors do |t|
      t.string :first_name
      t.string :last_name
      t.date :birthdate
      t.string :nationality
      t.string :img

      t.timestamps
    end
  end
end
