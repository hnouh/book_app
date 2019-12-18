class AuthorsController < ApplicationController
    def index
        @authors = Author.all 
    end	

    def show
        @authors = Author.find(params[:id])
        @books = @authors.books
      end

      def new
        @authors = Author.new
      end

      def create
        Author.create(params.require(:author).permit(:first_name, :last_name, :birthdate, :nationality, :img))
        redirect_to authors_path
      end

      def edit
        @authors = Author.find(params[:id])
      end

      def update
        authors = Author.find(params[:id])
        authors.update(params.require(:author).permit(:first_name, :last_name, :birthdate, :nationality, :img))
          
        redirect_to authors
      end

      def destroy
       Author.find(params[:id]).destroy
      
        redirect_to authors_path
      end
end
