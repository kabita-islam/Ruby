class ListsController < ApplicationController
  def new
    @list = List.new
  end

  def index
    @lists = List.paginate(page: params[:page], per_page: 5)
  end
   
  def create
    @list = List.new(list_params)
    @list.user = User.last
    if @list.save
      flash[:notice]= "Record is ceated successfully."
      redirect_to lists_path(@list)
    else
      render :new, status: 422
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
      redirect_to lists_path(@list)
    else
      render :edit
    end
  end

  def delete
    @list = List.find(params[:id])
    @list.destroy
    flash[:notice] = "Deleted Successfully."
    redirect_to lists_path
  end
end
