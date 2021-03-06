class BooksController < ApplicationController
  def index
    @books = book.all
    @book = Book.new
  end
  
  def create
  end

  def edit
  end

  def show
  end
  
  def destroy
  end 
  
  private
  def params.id
  end
end
