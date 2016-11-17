class BlogController < ApplicationController
  def index
    @posts = Post.all.reverse #@변수:view file에 그대로 전달
  end

  def create
    Post.create(writer:params[:irum], content:params[:naeyong])
    #얘는 화면을 띄어줄 필요가 없다 -> view file 만들지 xx
    redirect_to :root
  end

  def destroy
    pp = Post.find(params[:id]) #객체
    pp.destroy
    redirect_to :root
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    pp = Post.find(params[:id])
    pp.writer = params[:irum]
    pp.content = params[:naeyong]
    pp.save
    redirect_to :root
  end

  def show
    @post = Post.find(params[:id])
  end

  def comment
    pp = Post.find(params[:id])
    pcmts = pp.cmts
    pcmts.create(post_id:pp.id, msg:params[:comment])
    redirect_to action: 'show', id: pp.id
  end

  def delete_comment
    pp = Post.find(params[:post_id])
    pcmts = pp.cmts
    c = pcmts.find(params[:id])
    c.destroy
    pp.save
    redirect_to action: 'show', id: pp.id
  end



end
