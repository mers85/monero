class Api::V1::ConvertsController < ApplicationController

  def create
    render json:{
      success: true,
      query: {
        from:"USD",
        to:"ILS",
        amount:12
      },
      info: {
        timestamp: 1544654047,
        rate: 3.74915
      },
      date: Date.today,
      result: 44.9898,
    },status: 200
  end
end