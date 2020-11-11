class BooksController < ApplicationController

  def top
  end
  
  # def new
  # @book=Book.new
  # end
  
  def create
    @book=Book.new(book_params)
    if @book.save
    redirect_to "/books/#{@book.id}"
    else 
    redirect_to "/books"
    end
  end
  
  def index
    @books=Book.all
    @book=Book.new
  end
  
  def show
    # @book=Book.find(book_params)
    @book=Book.find(params[:id])
  end
  
  def edit
    @book=Book.find(params[:id])
  end

  def update
    book=Book.find(params[:id])
    book.update(book_params)
    redirect_to "/books/#{book.id}"
  end

  def destroy
    book=Book.find(params[:id])
    book.destroy
    redirect_to "/books"
  end


    private
    
    
  # ストロングパラメータ
  def book_params
    params.require(:book).permit(:title, :body)
  end
  

  
end
