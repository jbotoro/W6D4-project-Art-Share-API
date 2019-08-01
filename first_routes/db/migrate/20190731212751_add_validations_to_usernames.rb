class AddValidationsToUsernames < ActiveRecord::Migration[5.2]
  def change
    drop_table :users
    create_table :users do |t|
      t.string :username, null: false, unique: true
      
      t.timestamps
    end

    # remove_column :users, :username
    # add_column :users, :username, unique: true, null: false
  end
end
