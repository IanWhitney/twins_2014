class AddAttendeeId < ActiveRecord::Migration
  def change
    add_column :games, :attendee_id, :integer
  end
end
