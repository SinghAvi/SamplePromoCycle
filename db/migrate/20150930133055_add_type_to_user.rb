class AddTypeToUser < ActiveRecord::Migration
  def change
    add_column :users, :Type, :string
  end
end
