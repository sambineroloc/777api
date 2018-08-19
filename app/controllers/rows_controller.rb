# frozen_string_literal: true

# Controls queries for rows
class RowsController < ApplicationController
  def index
    @rows = Row.all
    render json: @rows
  end

  def show
    if params[:column]
      row = Row.find_by(query_param: params[:id].to_i)
      column = Column.find_by(query_param:  params[:column])
      @row = row.correspondences.find_by(column: column)
    else
      @row = Row.find_by(query_param: params[:id].to_i)
    end
    render json: @row
  end
end
