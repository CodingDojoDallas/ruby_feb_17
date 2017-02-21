class DogsController < ApplicationController
  def index
    @dogs = Dog.all
  end

  def show
    @dog = Dog.find(params[:id]) #grabs id from url bar
  end

  def new
  end

  def edit
    @dog = Dog.find(params[:id])
  end

  def create
    # puts params[:name] will print name entered on form
    Dog.create(
      name:params[:name],
      breed:params[:breed],
    )
    redirect_to '/dogs'
  end

  def update
    dog = Dog.find(params[:id])
    dog.name = params[:name]
    dog.breed = params[:breed]
    dog.save
    redirect_to '/dogs'
  end

  def destroy
    Dog.delete(params[:id])
    redirect_to '/dogs'
  end
end
