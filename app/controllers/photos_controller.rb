class PhotosController < ApplicationController

  def edit_complete
   p = Photo.all.find(params[:id])
   p.source = params[:the_source]
   p.caption = params[:the_caption]
   p.save

   redirect_to("http://localhost:3000/photos")
end


def create_row
     p = Photo.new
     p.source = params[:the_source]
     p.caption = params[:the_caption]
     p.save

     redirect_to("http://localhost:3000/photos")
end

  def destroy
     Photo.all.find(params["id"]).destroy

     redirect_to("http://localhost:3000/photos")

  end

  def edit_form
   @id = params[:id]
   @specificPhoto = Photo.all.find(@id)
   render "edit_form"
  end





  def index
    @list_of_photos = Photo.all
 end

 def show
   @id = params["id"]
   @specificPhoto = Photo.all.find(@id)
end

def new_form
end


end


