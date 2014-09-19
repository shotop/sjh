class AddGuestEmailToComments < ActiveRecord::Migration
  def change
    add_column :comments, :guest_email, :string
  end
end
