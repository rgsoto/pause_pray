class AddUserIdToPrayerRequest < ActiveRecord::Migration
  def change
    add_column :prayer_requests, :user_id, :integer
    add_index :prayer_requests, :user_id
  end
end
