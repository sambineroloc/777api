class ColumnsController < ApplicationController
  def index
    @columns = Column.all
    render json: @columns
  end

  def show
    @column = Column.find_by(query_param: params[:id].to_i)
    render json: @column
  end
end
