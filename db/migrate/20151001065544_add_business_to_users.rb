class AddBusinessToUsers < ActiveRecord::Migration
  def change
    add_column :users, :business, :string
  end
end
