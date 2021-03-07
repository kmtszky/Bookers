class BooksController < ApplicationController
  def index
    @books = Book.all
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to book_path(book.id), notice: 'Book was successfully created.'
    else
      @books = Book.all # renderはmodelを経由しないため事前に本の情報を取得する
      render "index"
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      redirect_to book_path(@book.id), notice: 'Book was successfully updated.'
    else
      render "edit"
    end
  end

  def show
    @book = Book.find(params[:id])
  end

  def destroy
    book = Book.find(params[:id])
    if book.destroy
      redirect_to books_path, notice: 'Book was successfully destroyed.'
    else

    end
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end

end
