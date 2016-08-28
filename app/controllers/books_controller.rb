class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    book = Book.new(book_params)
    if book.save
      flash[:success] = "You've added #{book.title} to the store!"
      redirect_to root_path
    else
      flash.now[:danger] = "There was a problem with your selection."
      render new_book_path
    end
  end

  private

    def book_params
      params.require(:book).permit(:author, :title)
    end
end
