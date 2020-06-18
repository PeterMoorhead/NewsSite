class AddCommentCountToMicroposts < ActiveRecord::Migration[5.2]
  def change
    add_column :microposts, :commentCount, :int
  end
end
