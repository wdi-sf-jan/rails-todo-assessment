class VisitorsController < ApplicationController
before_action :find_visitor, only: [:edit,:show, :destroy]

  def index
    @visitors = Visitor.all
  end

  def new
    @visitor = Visitor.new
  end

  def create
    @visitor = Visitor.create visitor_params
    redirect_to visitors_path
  end

  def show
  end

  def edit
  end

  def update
    @visitor.update_attributes visitor_params
    redirect_to @visitor
  end

  def destroy
    @visitor.destroy
    redirect_to visitors_path
  end


  private
  def visitor_params
    params.require(:visitor).permit(:name)
  end

  def find_visitor
    @visitor = Visitor.find(params[:id])
  end
end
