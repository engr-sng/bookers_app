class BooksController < ApplicationController
  def new
  end

  def index
    @book = Book.new(book_params)
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to '/'
  end

  def update
  end

  def destroy
  end

  def show
  end

  def edit
  end

  private
  def book_params
    params.permit(:title, :body)
  end  
end
