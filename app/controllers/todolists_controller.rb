class TodolistsController < ApplicationController
  def new
  	# viewに渡すためのインスタンス変数に空のmodelオブジェクト(List)を生成(.new)する
  	@list =List.new
  end

  def create
  	# ストロングパラメータ(list_params)を使用
    list =List.new(list_params)
  	# ｄｂへList.new(list_params)を保存
    list.save
  	# トップ画面へリダイレクト '/todolist/#{list.id}'を名前付きルートに書き換えたもの
    redirect_to todolist_path(list.id)
  end

  def index
  	@lists = List.all
  end

  def show
  	@list =List.find(params[:id])
  end

  # ストロングパラメータの境界線（この下には何も書かない）
  # フォームの入力値をコントローラー内でしか呼び出せないようにするメソッド
  private

  def list_params
    params.require(:list).permit(:title, :body)
  end

end
