class PlayersController < ApplicationController
  # before_action :set_item, only: [:show, :edit, :update, :destory]
  # before_action :signed_in_user, except: [:index, :show]
  # before_action :correct_user, except: [:new, :create, :index, :show]

  def index
  end

  def show
    response = HTTParty.get "http://api.usatoday.com/open/salaries/nba?players=&encoding=json&api_key=rsf229wnbzyeq3cf4y6wqrfg"
    @data = JSON.parse(response.body)
  
    @salaries_object = @data["salaries"][0]
    @salaries = @salaries_object["salary"]
  end

  def new
  end

  def create
    @player = current_user.players.new(player_params)
    if @player.save
      flash[:success] = 'Player created.'
      redirect_to players_path
    else
     render 'new'  
    end
  end  

def edit
end


end