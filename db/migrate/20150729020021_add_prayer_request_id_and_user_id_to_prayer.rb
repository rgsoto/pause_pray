class AddPrayerRequestIdAndUserIdToPrayer < ActiveRecord::Migration
  def change
    add_column :prayers, :prayer_request_id, :integer
    add_index :prayers, :prayer_request_id
    add_column :prayers, :user_id, :integer
    add_index :prayers, :user_id
  end
end
