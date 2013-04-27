class TablesController < ApplicationController
  # GET /tables
  # GET /tables.json
  def index
    if(!session[:table].nil?)
      @table = session[:table]
    end
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tables }
    end
  end
  # POST /tables
  # POST /tables.json
  def create
    @table = Table.new(params['players'].to_i,params['hand_size'].to_i)
    session[:table] = @table
    respond_to do |format|
        format.html { redirect_to tables_path, notice: 'Table was successfully created.' }
      end
  end

  # PUT /tables/1
  # PUT /tables/1.json
  def update
    table = session[:table]
    player_id = params[:player_id]
    card_id = params[:card_id]
    table.player_play(player_id.to_i,card_id.to_i)
    session[:table] = table
    
    respond_to do |format|
        format.html { redirect_to tables_path, notice: 'Table was successfully updated.' }
    end
  end

  def draw
    respond_to do |format| format.js {} format.html { redirect_to tables_path, notice: 'Card Drawn.'}
    end
  end

  def destroy
    reset_session
    respond_to do |format|
      format.html { redirect_to tables_path, notice: 'Session Ended'}
    end
  end

end
