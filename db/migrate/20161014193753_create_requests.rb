class CreateRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :requests do |t|
      t.string :user_action
      t.string :level
      t.text :member
      t.text :memberlist
      t.text :access_group
      t.text :access_repo

      t.timestamps
    end
  end
end
