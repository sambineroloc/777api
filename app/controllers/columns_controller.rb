# frozen_string_literal: true

# Controls the response in column requests
class ColumnsController < ApplicationController
  def index
    @columns = Column.all
    render json: @columns
  end

  def show
    if params[:row]
      row = Row.find_by(query_param: params[:row])
      column = Column.find_by(query_param: params[:id].to_i)
      @column = column.correspondences.find_by(row: row)
    else
      @column = Column.find_by(query_param: params[:id].to_i)
    end
    render json: @column
  end
end
