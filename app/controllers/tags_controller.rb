class TagsController < ApplicationController

  def show
    @photos = Photo.tagged_with("#{params[:tag]}").order('created_at desc').page(params[:page])
  end

end
