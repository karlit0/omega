class CommentsController < ApplicationController
  def new
  	@comment = Comment.new
    @comment.subject_id = StoredSubjectId.first.stored_id
    @subject = Subject.find_by_id(@comment.subject_id)
  end

  def create
  	@comment = Comment.new(params[:comment])
  	@subject = Subject.find_by_id(@comment.subject_id)
    if @comment.save
  		redirect_to controller: "subjects", action: "show", id: @comment.subject_id
  	else
  		render 'new'
  	end
  end

  def edit
  	@comment = Comment.find(params[:id])
    @subject = Subject.find_by_id(@comment.subject_id)
  end

  def update
  	@comment = Comment.find(params[:id])
    @subject = Subject.find_by_id(@comment.subject_id)
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
