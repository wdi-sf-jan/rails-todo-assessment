class TodoitemsController < ApplicationController
  def index
  end

  def new
    @todolist = Todolist.find params[:todolist_id]
    @todoitem = Todoitem.new
  end

  def show
  end

  def edit
  end

  # Got stuck on this part.  Hidden field for todolist_id is being passed back from form,
  # however not getting saved to @todoitem.todolist_id.  So the item is being saved but
  # never shows up on the list.  Sonofabitch.
  def create
    binding.pry
    @todoitem = Todoitem.new todoitem_params
    # possible hack to fix it...
    # @todoitem.todolist_id = params[:todoitem][:todolist_id]
    binding.pry
    if @todoitem.save
      binding.pry
      redirect_to todolists_path
    else
      flash.now[:alert] = "There was a problem"
      render :new
    end
  end

  private

  def todoitem_params
    params.require(:todoitem).permit(:content, :todolist_id)
  end

end
