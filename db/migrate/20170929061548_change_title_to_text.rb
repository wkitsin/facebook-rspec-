class ChangeTitleToText < ActiveRecord::Migration
  def change
  	change_column :statuses , :title, :string 
  end
end
