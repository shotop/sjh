class AddGuestNameToComments < ActiveRecord::Migration
  def change
    add_column :comments, :guest_name, :string
  end
end
