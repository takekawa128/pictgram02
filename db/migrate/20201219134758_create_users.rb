class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      #下記２行追加
      #create_tableはテーブルを作るためのメソッド
      #create_tableの「t.」に続く「string」が型で、その後に続く「:name」「:email」などがカラム名Migrationファイル
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
