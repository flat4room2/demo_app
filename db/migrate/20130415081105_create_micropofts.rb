class CreateMicropofts < ActiveRecord::Migration
  def change
    create_table :micropofts do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
end
