class AddAvatarToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :avatar, :string
  end
end
