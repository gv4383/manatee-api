class CreateSkill < ActiveRecord::Migration[6.0]
  def change
    create_table :skills do |t|
      t.string :name
      t.string :description
      t.integer :rating
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
