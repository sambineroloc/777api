require 'rails_helper'

RSpec.describe ColumnsController, type: :controller do
  describe "GET index" do
    it "assigns @columns" do
      column = Column.create(title: 'test', roman_numeral: 'test')
      get :index
      expect(assigns(:columns)).to eq([column])
    end
  end

  # TODO: Get this shit working
  describe "SHOW index" do
    it "assigns @column" do
      column = Column.create(title: 'test', roman_numeral: 'IX.', query_param: 1)
      get :show, { id: column.query_param }
      expect(assigns(:column)).to eq([column])
    end
  end
end
