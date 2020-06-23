class TagsController < ApplicationController
  def new
    @tag = Tag.new
    @tags = Tag.all
  end

  def create
    @tags = Tag.all
    names = strong_params[:name].split(/, /)
    
    names.each do |name|
      @tag = Tag.new name: name
      @tag.save
    end

    redirect_to(root_path, notice: "Tags '#{names.join(" ")}' were succesfully created")
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
    params.require(:tag).permit(:names)
  end
end
