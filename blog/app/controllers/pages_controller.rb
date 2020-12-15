class PagesController < ApplicationController
    def index
        @pages = Page.all
    end
    
    def show
        @page = Page.find (params[:id])
    end
    
    def new
        @page = Page.new
    end 
    
    def create
#        page_params = require(:page)
#       once we set up the page_params method, we do not need the page_params local variable anymore
        @page = Page.new(page_params)
        @page.save
        redirect_to @page
    end
    
    def edit
        @page = Page.find(params[:id])
    end
    
    def update
        @page = Page.find(params[:id])
 #       page_params = params.require(:page).permit(:title, :body, :slug) 
 #       once we set up the page_params method, we do not need the page_params local variable anymore
        @page.update(page_params)
        redirect_to @page
    end
    
    def destroy
        @page = Page.find(params[:id])
        @page.destroy
        redirect_to pages_path
    end
    
private    
    
    def page_params
        params.require(:page).permit(:title, :body, :slug)
    end
end
