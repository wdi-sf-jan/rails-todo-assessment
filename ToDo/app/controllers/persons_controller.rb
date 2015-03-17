class PersonsController < ApplicationController
  before_action :find_person, only: [:show, :edit, :destroy]
  def index
    @persons = Person.all
  end

  def new
    @person = Person.new
  end

  def create
    Person.create person_params
    redirect_to persons_path
  end

  def show
  end

  def edit
  end

  def update
    @person.update_attributes person_params
    redirect_to @person
  end

  def destroy
    @person.destroy
    redirect_to persons_path
  end 



  private
  def person_params
    params.require(:person).permit(:name, :email, :age)
  end

  def find_person
    @person = Person.find params[:id]
  end
end
