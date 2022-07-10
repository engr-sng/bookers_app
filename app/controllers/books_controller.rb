class BooksController < ApplicationController
  def new
  end

  def index
    @book = Book.new
    @books = Book.all.order(id: "ASC")
  end

  def create
    @book = Book.new(book_params)
    @books = Book.all.order(id: "ASC")
    if @book.save
    redirect_to "/books/#{@book.id}"
    flash[:notice] = "Book was successfully created."
    else
    render :index
    end
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
    redirect_to "/books/#{@book.id}"
    flash[:notice] = "Book was successfully updated."
    else
    render :edit
    end
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to "/books"
    flash[:notice] = "Book was successfully destroyed."
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end  
end
