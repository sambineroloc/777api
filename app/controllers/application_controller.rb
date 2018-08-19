# frozen_string_literal: true

# Application Controller
class ApplicationController < ActionController::API
  def check_for_query_params(model_name, params_symbol)
    chosen_param = params[params_symbol]
    model_name.find_by(query_param: chosen_param) if chosen_param
  end
end
