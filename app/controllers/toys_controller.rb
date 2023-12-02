# frozen_string_literal: true

# Toys entities endpoints
class ToysController < ApplicationController
  def show
    @toy = Toy.includes(:trade_mark).find(params.require(:id))
  end
end
