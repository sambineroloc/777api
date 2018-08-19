# frozen_string_literal: true

# Controls the response in column requests
class ColumnsController < ApplicationController
  def index
    @columns = Column.all
    render json: @columns
  end

  def show
    @row = check_for_query_params
    @column = Column.find_by(query_param: params[:id].to_i)
    @column = @column.correspondences.find_by(row: @row) unless @row.nil?
    render json: @column
  end

  private

  def check_for_query_params
    Row.find_by(query_param: params[:row]) if params[:row]
  end
end
