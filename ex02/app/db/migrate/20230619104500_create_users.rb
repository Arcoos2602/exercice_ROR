class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :datetime
      t.string :first_name
      t.string :last_name
      t.string :string
      t.string :phone

      t.timestamps
    end
  end
end
