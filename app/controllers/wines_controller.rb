class WinesController < ApplicationController
  def index
  	@wines = ["Beronia Tempranillo Crianza", "Cordorniu Pinot Noir", "Alabanta Albarino"]
  end
end