class ExpensesheetsController < ApplicationController
  # GET /expensesheets
  # GET /expensesheets.json
  def index
    @expensesheets = Expensesheet.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @expensesheets }
    end
  end

  # GET /expensesheets/1
  # GET /expensesheets/1.json
  def show
    @expensesheet = Expensesheet.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @expensesheet }
    end
  end

  # GET /expensesheets/new
  # GET /expensesheets/new.json
  def new
    @expensesheet = Expensesheet.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @expensesheet }
    end
  end

  # GET /expensesheets/1/edit
  def edit
    @expensesheet = Expensesheet.find(params[:id])
  end

  # POST /expensesheets
  # POST /expensesheets.json
  def create
    @decoration = Decoration.find(params[:decoration_id])
 
 respond_to do |format|
      if (params[:amount]!=nil) && (params[:name]!="")
         @expensesheet = @decoration.expensesheets.create(params[:expenseheet])
       
         format.html { redirect_to @expensesheet, notice: 'expense added.' }
         format.json { render json: @expensesheet, status: :created, location: @ex }
      else

          format.html { redirect_to @expensesheet, notice: 'Add name and amount' }
          format.json { render json: @expensesheet.errors, status: :unprocessable_entity }
      
      end
    end
  end

  # PUT /expensesheets/1
  # PUT /expensesheets/1.json
  def update
    @expensesheet = Expensesheet.find(params[:id])

    respond_to do |format|
      if @expensesheet.update_attributes(params[:expensesheet])
        format.html { redirect_to @expensesheet, notice: 'Expensesheet was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @expensesheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /expensesheets/1
  # DELETE /expensesheets/1.json
  def destroy
    @expensesheet = Expensesheet.find(params[:id])
    @expensesheet.destroy

    respond_to do |format|
      format.html { redirect_to expensesheets_url }
      format.json { head :no_content }
    end
  end
end
