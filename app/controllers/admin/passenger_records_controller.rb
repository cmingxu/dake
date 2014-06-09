class Admin::PassengerRecordsController < Admin::BaseController
  # GET /passenger_records
  # GET /passenger_records.json
  def index
    @passenger_records = PassengerRecord.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @passenger_records }
    end
  end

  # GET /passenger_records/1
  # GET /passenger_records/1.json
  def show
    @passenger_record = PassengerRecord.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @passenger_record }
    end
  end

  # GET /passenger_records/new
  # GET /passenger_records/new.json
  def new
    @passenger_record = PassengerRecord.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @passenger_record }
    end
  end

  # GET /passenger_records/1/edit
  def edit
    @passenger_record = PassengerRecord.find(params[:id])
  end

  # POST /passenger_records
  # POST /passenger_records.json
  def create
    @passenger_record = PassengerRecord.new(params[:passenger_record])

    respond_to do |format|
      if @passenger_record.save
        format.html { redirect_to @passenger_record, notice: 'Passenger record was successfully created.' }
        format.json { render json: @passenger_record, status: :created, location: @passenger_record }
      else
        format.html { render action: "new" }
        format.json { render json: @passenger_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /passenger_records/1
  # PUT /passenger_records/1.json
  def update
    @passenger_record = PassengerRecord.find(params[:id])

    respond_to do |format|
      if @passenger_record.update_attributes(params[:passenger_record])
        format.html { redirect_to @passenger_record, notice: 'Passenger record was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @passenger_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /passenger_records/1
  # DELETE /passenger_records/1.json
  def destroy
    @passenger_record = PassengerRecord.find(params[:id])
    @passenger_record.destroy

    respond_to do |format|
      format.html { redirect_to passenger_records_url }
      format.json { head :no_content }
    end
  end
end
