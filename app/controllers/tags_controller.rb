class TagsController < ApplicationController
  def new
    @tag = Tag.new
  end

  def create
    @tag = Tag.new strong_params
    @tag.save ? redirect_to(root_path, notice: "Tag #{@tag.name} was succesfully created") : render(:new)
  end

  private

  def strong_params
    params.require(:tag).permit(Tag::STRONG_PARAMS)
  end
end
