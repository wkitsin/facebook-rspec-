class AddReferenceToLikes < ActiveRecord::Migration
  def change
  	add_reference :likes, :status 
  end
end
