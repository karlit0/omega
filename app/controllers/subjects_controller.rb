class SubjectsController < ApplicationController
  def new
    @subject = Subject.new
  end

  def create
    @subject = Subject.new(params[:subject])
    if @subject.save
      redirect_to subjects_path
    else
      render 'new'
    end
  end

  def destroy
    @subject = Subject.find(params[:id])
    @subject.destroy
    redirect_to subjects_path
  end

  def show
    @subject = Subject.find(params[:id])
    @comments = Comment.all
  end

  def edit
    @subject = Subject.find(params[:id])
  end

  def update
    @subject = Subject.find(params[:id])
    if @subject.update_attributes(params[:subject])
      redirect_to subjects_path
    else
      render 'edit'
    end
  end

  def index
  	@subjects = Subject.all
  end
end
