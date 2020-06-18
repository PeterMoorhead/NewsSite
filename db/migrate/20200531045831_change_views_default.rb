class ChangeViewsDefault < ActiveRecord::Migration[5.2]
  def change
    change_column_default(
      :microposts,
      :views,
      0
    )
  end
end
