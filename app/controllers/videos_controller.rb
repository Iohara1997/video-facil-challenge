class VideosController < ApplicationController
    def index
        @videos = Video.order :nome
    end

    def create
        video = params.require(:video).permit(:title, :url)
        Video.create video
        redirect_to root_url
    end

    def destroy
        id = params[:id]
        Video.destroy id
        redirect_to root_url
    end

    def search
        @title = params[:title]
        @videos = Video.where "title like ?", "%#{@title}%"
    end
end
