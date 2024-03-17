class AddPriorityToIdeas < ActiveRecord::Migration[7.1]
  def change
    add_column :ideas, :priority, :integer
  end
end
