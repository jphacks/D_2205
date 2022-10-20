class AddPrefectureToPosts < ActiveRecord::Migration[7.0]
  def change
    add_reference :posts, :prefecture, index: true, foreign_key: true
  end
end
