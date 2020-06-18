class AddCommentsToMicroposts < ActiveRecord::Migration[5.2]
  def change
    add_column :microposts, :comments, :string
  end
end
