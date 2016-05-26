class CreateExpireds < ActiveRecord::Migration
  def change
    create_table :expireds do |t|
      t.integer :mandalart_id
      t.integer :level
      t.string :content

      t.timestamps null: false
    end
  end
end
