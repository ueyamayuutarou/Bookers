class BooksController < ApplicationController
  def new
  	@book = Book.new
    @books = Book.all
  end

  def create
  	book = Book.new(book_params)
  	book.savex
  	redirect_to root_path
  end

  def index
  	@books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

private

def book_params
	params.require(:book).permit(:title, :body)
end
end
