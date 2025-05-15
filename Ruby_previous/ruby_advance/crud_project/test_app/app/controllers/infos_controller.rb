class InfosController < ApplicationController
  def new
    @info = Info.new
  end
end
