class TagsController < ApplicationController
  def new
    @tag = Tag.new
    @tags = Tag.all
  end

  def create
    @tag = Tag.new strong_params
    @tags = Tag.all
    @tag.save ? redirect_to(root_path, notice: "Tag #{@tag.name} was succesfully created") : render(:new)
  end

  def destroy
    @tag = Tag.find params[:id]
    @tag.destroy
    respond_to do |format|
      format.js {render inline: "location.reload();" }
    end
  end

  private

  def strong_params
    params.require(:tag).permit(Tag::STRONG_PARAMS)
  end
end
