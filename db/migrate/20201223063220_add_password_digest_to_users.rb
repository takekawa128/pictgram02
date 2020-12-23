class AddPasswordDigestToUsers < ActiveRecord::Migration[5.2]#[]の数字はRailsのバージョン
  def change
    #usersテーブルにpassword_digestカラムを追加
    add_column :users, :password_digest, :string
  end
end
