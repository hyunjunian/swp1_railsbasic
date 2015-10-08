class BlogController < ApplicationController
    def index
        @posts =Post.all.reverse
    end
    
    def create
        Post.create(writer:params[:name], content:params[:content])
        redirect_to :root
    end
    
    def delete
        pp = Post.find(params[:id])
        pp.destroy
        redirect_to :root
    end
    
    def edit
        @pp= Post.find(params[:id])
    end
    
    def update
        ppp=Post.find(params[:id])
        ppp.writer=params[:name]
        ppp.content=params[:content]
        ppp.save
        redirect_to :root
    end

end
