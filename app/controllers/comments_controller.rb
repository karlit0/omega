class CommentsController < ApplicationController
  def new
  	@comment = Comment.new
  end

  def create
  	@comment = Comment.new(params[:comment])
  	if @comment.save
  		redirect_to controller: "subjects", action: "show", id: @comment.subject_id
  	else
  		render 'new'
  	end
  end

  def edit
  	@comment = Comment.find(params[:id])
  end

  def update
	@comment = Comment.find(params[:id])
	if @comment.update_attributes(params[:comment])
		redirect_to controller: "subjects", action: "show", id: @comment.subject_id
	else
		render 'edit'
	end
  end

  def destroy
  	@comment = Comment.find(params[:id])
  	@comment.destroy
  	redirect_to controller: "subjects", action: "show", id: @comment.subject_id
  end
end
