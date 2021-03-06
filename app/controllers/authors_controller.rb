class AuthorsController < ApplicationController
  def new
    @author = Author.new
  end

  def destroy
    Author.find(params[:id]).destroy
    redirect_to authors_path
  end

  def create
    @author = Author.new(author_params)
    if (@author.save)
        redirect_to @author
    else
        render "new"
    end
  end

  def show
    @author = Author.find(params[:id])
  end

  def index
    @authors = Author.all()
  end

  def edit
    @author = Author.find(params[:id])
  end

  def update
    @author = Author.find(params[:id])
    if @author.update(author_params)
        redirect_to @author
    else
        render 'edit'
    end
  end

  private
    def author_params
      params.require(:author).permit(:first_name, :last_name, :homepage)
    end
end
