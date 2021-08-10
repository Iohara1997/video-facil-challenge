class VideosController < ApplicationController

    before_action :set_video, only: [:edit, :update, :destroy]

    def index
        @videos = Video.joins(:category).merge(Category.where(favorite: true))
    end

    def new
        @video = Video.new
        @categories = Category.all
    end

    def create
        @video = Video.new video_params
        if @video.save
            flash[:notice] = "Vídeo salvo com sucesso!"
            redirect_to root_url
        else
            set_render :new
        end
    end

    def show
        @video = Video.where("id = ?", params[:id])
    end

    def edit
        set_render :edit
    end

    def update
        if @video.update video_params
            flash[:notice] = "Vídeo atualizado com sucesso!"
            redirect_to root_url
        else
            set_render :edit
        end
    end

    def destroy
        @video.destroy
        redirect_to root_url
    end

    def search
        @title = params[:title]
        @videos = Video.where "title like ?", "%#{@title}%"
    end

    private

    def video_params
        params.require(:video).permit(:title, :url, :category_id)
    end

    def set_video
        @video = Video.find(params[:id])
    end

    def set_render(view)
        @categories = Category.all
        render view
    end
end
