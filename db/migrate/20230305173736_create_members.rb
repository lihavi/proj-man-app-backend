class CreateMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :members do |t|
      t.string :name
      t.text :email
      t.integer :user_id
      t.integer :project_id
      t.timestamps
    end
  end
end
