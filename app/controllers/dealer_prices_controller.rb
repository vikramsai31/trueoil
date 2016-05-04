class DealerPriceController < ApplicationController
  def index
    @prices=DealerPrice.all
  end
end
