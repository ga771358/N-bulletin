class BulletinController < ApplicationController
    def index
       @news = Board.where(:new => 1)
       @update = Board.where(:new => 0)
    end
    def new
        @boards = Board.new
    end
    def create
        @boards = Board.new(board_params)
        @boards.new = params[:new]
        @boards.save
        redirect_to bulletin_index_path
    end
    def edit
        @boards = Board.find(params[:id])
    end
    def update
        @boards = Board.find(params[:id])
        @boards.update(board_params)
        @boards.save
        redirect_to bulletin_index_path
    end
    def destroy
        @event = Board.find(params[:id])
        @event.destroy
        redirect_to bulletin_index_path
    end

    private
    def board_params
    params.require(:board).permit(:description,:year,:month,:day)
    end
    
end
