class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    book = Book.new(book_params)
    book.location = Location.new(location_type: params[:book][:location])
    if book.save
      flash[:success] = "You've added #{book.title} to the store!"
      redirect_to root_path
    else
      flash.now[:danger] = "There was a problem adding #{book.title}."
      render new_book_path
    end
  end

  def destroy
    book = Book.find(params[:id])
    if book.destroy
      flash[:success] = "#{book.title} has been removed from the store!"
      redirect_to root_path
    else
      flash.now[:danger] = "There was a problem removing #{book.title}."
      render root_path
    end
  end

  private

    def book_params
      params.require(:book).permit(:author, :title)
    end
end
