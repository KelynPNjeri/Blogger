# frozen_string_literal: true

class TagsController < ApplicationController
  def index
    @tags = Tags.all
  end

  def show
    @tag = Tag.find(params[:id])
  end
  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy
    flash.notice = "tag '#{@tag.title}' Deleted!"
    redirect_to tags_path
  end
end
