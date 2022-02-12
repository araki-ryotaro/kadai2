class BooksController < ApplicationController

  def index
    @books = Book.all
    @book = Book.new
  end

  def create
    book = Book.new(book_params)
    if book.save
      flash[:success] = "successfully"
      redirect_to book_path(book.id)
    else
      flash.now[:danger] = "error"
      render books_path
    end
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to books_path
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    if book.update(book_params)
      flash[:success] = "successfully"
      redirect_to book_path(book.id)
    else
      flash.now[:danger] = "error"
      render book__path(book.id)
    end
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end
end
