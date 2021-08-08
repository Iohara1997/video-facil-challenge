class VideosController < ApplicationController
    def index
        @videos = Video.order :nome
    end
end
