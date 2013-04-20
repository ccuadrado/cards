class TablesController < ApplicationController
  # GET /tables
  # GET /tables.json
  def index
    if(!session[:table].nil?)
      @table = session[:table]
      @number_of_players = session[:table].players
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
    @table = Table.find(params[:id])

    respond_to do |format|
      if @table.update_attributes(params[:table])
        format.html { redirect_to @table, notice: 'Table was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @table.errors, status: :unprocessable_entity }
      end
    end
  end
end
