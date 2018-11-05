class AddBudgeToSkills < ActiveRecord::Migration[5.2]
  def change
    add_column :skills, :budge, :text
  end
end
