class TagsController < ApplicationController
  # 
  # before_action do
  # end

  def show
    @photos = Photo.tagged_with("#{params[:tag]}").order('created_at desc').page(params[:page])
  end

end
