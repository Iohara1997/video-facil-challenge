class VideosController < ApplicationController
    def index
        @videos = Video.order :nome
    end

    def new
        @video = Video.new
        @categories = Category.all
    end

    def create
        video_value = params.require(:video).permit(:title, :url)
        @video = Video.new video_value
        if @video.save
            flash[:notice] = "Vídeo salvo com sucesso!"
            redirect_to root_url
        else
            render :new
        end
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
