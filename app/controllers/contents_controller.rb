class ContentsController < ApplicationController

  def index
    @content = Content.all
  end

  def new
    @content = Content.new
  end
  
  def create
    @content = Content.new(content_params)
    if @content.save
    redirect_to contents_path
    else
      render new
    end
  end
  
  private
  def content_params
    params.require(:content).permit(:Answer1, :Answer2, :Answer3)
  end
  
end