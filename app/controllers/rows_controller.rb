# frozen_string_literal: true

# Controls queries for rows
class RowsController < ApplicationController
  def index
    @rows = Row.all.select %w[id number query_param]
    render json: @rows.to_json
  end

  def show
    @row = Row.find_by(query_param: params[:id].to_i)
    render json: @row
  end
end
