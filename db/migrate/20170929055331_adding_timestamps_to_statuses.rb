class AddingTimestampsToStatuses < ActiveRecord::Migration
  def change
  	add_column :statuses, :created_at, :datetime, null: false
  	add_column :statuses, :updated_at, :datetime, null: false
  end
end
