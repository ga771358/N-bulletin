class BulletinController < ApplicationController
    def index
       @boards = Board.all
    end
end
