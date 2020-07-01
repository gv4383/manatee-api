class AddMenteeToSkills < ActiveRecord::Migration[6.0]
  def change
    add_column :skills, :mentee, :boolean, default: true, null: false
  end
end
