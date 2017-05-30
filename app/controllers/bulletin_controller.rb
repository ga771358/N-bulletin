class BulletinController < ApplicationController
    def index
       @boards = Board.all
    end
    def new
        @boards = Board.new
    end
    def create
        @boards = Board.new(board_params)
        @boards.save
        redirect_to bulletin_index_path
    end

    private
    def board_params
    params.require(:board).permit(:description,:year,:month,:day)
    end
    
end
