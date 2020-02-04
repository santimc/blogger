class TagsController < ApplicationController
  def index
    @tag = Tag.all
  end

  def show
    @tag = Tag.find(params[:id])
  end

  def destroy
    @tag = Tag.destroy(params[:id])
    @tag.save

    flash.notice = "Tag '#{@tag.name}' Deleted"

    redirect_to tags_path
  end
end
