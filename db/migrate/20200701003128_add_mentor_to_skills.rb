class AddMentorToSkills < ActiveRecord::Migration[6.0]
  def change
    add_column :skills, :mentor, :boolean, default: false, null: false
  end
end
