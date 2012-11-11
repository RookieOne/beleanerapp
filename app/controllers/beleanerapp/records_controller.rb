class Beleanerapp::RecordsController < Beleanerapp::ApplicationController

  def index

    render json: { records: [["User", User.count] , ["Foobar", 0]] }
  end

  def show
    record_name = params[:id]
    @result = GetRecords.new(record_name).result
    render json: @result.to_json
  end

end