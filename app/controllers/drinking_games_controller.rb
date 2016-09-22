class DrinkingGamesController < ApplicationController
  before_action :set_drinking_game, only: [:show, :edit, :update, :destroy]
  helper_method :sort_column, :sort_direction

  # GET /drinking_games
  # GET /drinking_games.json
  def index
    @drinking_games = DrinkingGame.all
    if params[:search]
      @drinking_games = DrinkingGame.search(params[:search]).order("created_at DESC")
    else
    @drinking_games = DrinkingGame.order(
      sort_column + ' ' + sort_direction
    )
    end
    end

  # GET /drinking_games/1
  # GET /drinking_games/1.json
  def show
  end

  # GET /drinking_games/new
  def new
    @drinking_game = DrinkingGame.new
  end

  # GET /drinking_games/1/edit
  def edit
  end

  # POST /drinking_games
  # POST /drinking_games.json
  def create
    @drinking_game = DrinkingGame.new(drinking_game_params)

    respond_to do |format|
      if @drinking_game.save
        format.html { redirect_to @drinking_game, notice: 'Drinking game was successfully created.' }
        format.json { render :show, status: :created, location: @drinking_game }
      else
        format.html { render :new }
        format.json { render json: @drinking_game.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /drinking_games/1
  # PATCH/PUT /drinking_games/1.json
  def update
    respond_to do |format|
      if @drinking_game.update(drinking_game_params)
        format.html { redirect_to @drinking_game, notice: 'Drinking game was successfully updated.' }
        format.json { render :show, status: :ok, location: @drinking_game }
      else
        format.html { render :edit }
        format.json { render json: @drinking_game.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /drinking_games/1
  # DELETE /drinking_games/1.json
  def destroy
    @drinking_game.destroy
    respond_to do |format|
      format.html { redirect_to drinking_games_url, notice: 'Drinking game was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_drinking_game
      @drinking_game = DrinkingGame.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def drinking_game_params
      params.require(:drinking_game).permit(:name, :number_of_people, :supplies)
    end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end

  def sort_column
    DrinkingGame.column_names.include?(params[:sort]) ? params[:sort] : "name"
  end
end
