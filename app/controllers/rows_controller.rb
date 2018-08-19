# frozen_string_literal: true

# Controls queries for rows
class RowsController < ApplicationController
  def index
    @rows = Row.all
    render json: @rows
  end

  def show
    @column = check_for_query_params
    @row = Row.find_by(query_param: params[:id].to_i)
    @row = @row.correspondences.find_by(column: @column) unless @column.nil?
    render json: @row
  end

  private

  def check_for_query_params
    Column.find_by(query_param: params[:column]) if params[:column]
  end
end
