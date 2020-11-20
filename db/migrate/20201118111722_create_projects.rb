class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.integer :user_id
      t.string :project_type
      t.string :title
      t.text :text
 
      t.timestamps
    end
  end
end
