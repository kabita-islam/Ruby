class TestsController < ApplicationController

  def new
    @test=Test.new
  end

  def create
    @test=Test.new(test_params)
   if @test.save
    redirect_to show_test_path(@test)
   else
    render "new"
   end
  end

  def show
    @test_data=Test.find(params[:id])
  end

  def index
    @tests=Test.all
  end

  def edit
    @test=Test.find(params[:id])
  end

  def update
    @test=Test.find(params[:id])
    if @test.update(test_params)
      flash[:notice]="Successfully updated"
      redirect_to all_test_path
    else
      render "edit"
    end
  end

  def destroy
    @test=Test.find(params[:id])
    @test.destroy
    redirect_to all_test_path
  end
  
  def test_params
    params.require(:test).permit(:name, :age)
  end
  
end
