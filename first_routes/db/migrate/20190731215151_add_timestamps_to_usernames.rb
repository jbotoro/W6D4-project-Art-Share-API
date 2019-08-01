class AddTimestampsToUsernames < ActiveRecord::Migration[5.2]
  def change
    add_timestamps(:users)
  end
end
