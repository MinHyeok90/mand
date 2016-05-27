class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :teamname, :string
  end
end
