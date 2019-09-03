class AddAvatarToHanzis < ActiveRecord::Migration
  def change
    add_column :hanzis, :avatar, :string
  end
end
