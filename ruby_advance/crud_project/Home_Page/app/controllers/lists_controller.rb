class ListsController < ApplicationController
  def new
    @list = List.new
  end

  def index
    @lists = List.all
  end
   
  def create
    @list = List.new(list_params)
    if @list.save
      flash[:notice]= "Record is ceated successfully."
      redirect_to lists_path(@list)
    else
      render :new
    end
  end

  def edit
    @list = List.find(params[:id])
  end
  def list_params
    params.require(:list).permit(:name, :roll, :grade)
  end
  def show
    @list = List.find(params[:id])
  end

  def update
    @list = List.find(params[:id])
    if @list.update(list_params)
      flash[:notice] = "Updated Successfully."
      redirect_to lists_path
    else
      render :edit
    end
  end
end
