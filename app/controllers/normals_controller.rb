class NormalsController < ApplicationController
  def index
    @questions1 = Question.where(id: 1..21)
    @questions2 = Question.where(id: 22..50)
# クエスチョンモデルの中のレコード情報を、インスタンス変数クエスチョンズに入れ、
# こいつをノーマルズディレクトリのビューインデックスに情報を持っていく。
    # @choices = Choice.all
  end
  
  def new
  end
end


