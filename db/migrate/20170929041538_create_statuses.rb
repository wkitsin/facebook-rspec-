class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
    	t.belongs_to :user
      	
    end
  end
end
