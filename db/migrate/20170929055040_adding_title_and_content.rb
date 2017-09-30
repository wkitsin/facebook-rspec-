class AddingTitleAndContent < ActiveRecord::Migration
  def change
  	add_column :statuses, :title, :string 
  	add_column :statuses, :content, :string 
  end
end
