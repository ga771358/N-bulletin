class BulletinController < ApplicationController
    def index
       @boards = Board.all
    end
    def new
        @boards = Board.new
    end
    
end
