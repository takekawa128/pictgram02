class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def create
    #binding.pry
    #paramsは、Viewでフォームに入力された情報が入っている変数のこと
    #シンボルとは文字列とよく似たオブジェクトで、:email」のように、頭に「:」がついたオブジェクトのことをいう
    
    # ストロングパラメーターの追加,下記から変更
    # @user = User.new(name: params[:user][:name], email: params[:user][:email])
    # これによりUserはnameとemailというデータしか受け取れなくなる
    @user = User.new(user_params)
    if @user.save
      #redirect_toメソッドは、指定したPATH(URL)に転送する
      #rails routesコマンドを入力して表示される一覧から、Prefixに_pathを付けて任意のページに転送可能
      #pages#indexに繋いでる
      
      #successで文字を表示
      redirect_to root_path, success: '登録が完了しました'
    else
      #rednerで呼び出すViewを指定
      #newアクションのViewが読み込まれる
      
      #falsh.now[:danger]でページ移動させずに、テキストを表示だけさせてる
      flash.now[:danger] = "登録に失敗しました"
      render :new
    end
  end
  
  # 下記４行、ストロングパラメータの追加
  private
  def user_params
    # パスワードのparamsを許容するために、ストロングパラメータを変更
    # params.reuire(:user).permit(:name, :email)
    params.reuire(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
