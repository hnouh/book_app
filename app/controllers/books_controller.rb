class BooksController < ApplicationController
        def new
          @authors = Author.find(params[:authors_id])
          @book = Book.new
        end
      
        def create
            puts params
            author = Author.find(params[:book][:author_id])
            Book.create(params.require(:book).permit(:title, :year, :author_id))
                   
            redirect_to author
          end
    end
