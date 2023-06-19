class DeleteUselessRows < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :string, :string
    remove_column :users, :datetime, :datetime
  end
end
