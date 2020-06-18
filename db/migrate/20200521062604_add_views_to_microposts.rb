class AddViewsToMicroposts < ActiveRecord::Migration[5.2]
  def change
    add_column :microposts, :views, :int
  end
end
