class ChangeColumnOfStatus < ActiveRecord::Migration
  def change
  	change_column :statuses , :title, :text 
  	change_column :statuses, :content, :text 
  end
end
