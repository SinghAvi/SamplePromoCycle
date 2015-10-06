class RemoveTypeFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :Type, :string
  end
end
