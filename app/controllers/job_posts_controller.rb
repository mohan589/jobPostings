class JobPostsController < ApplicationController
  before_action :set_job_post, only: [:edit, :show, :update, :destroy]

  def index
  end

  def show
  end

  def new
    @job_post = JobPost.new
    @job_post.build_job_location
  end

  def edit
    @job_post.job_location
  end

  def create
    @job_post = JobPost.new(job_post_params)

    if @job_post.save
      redirect_to job_posts_path, notice: 'Job post added successfully!'
    else
      render 'new'
    end
  end

  def update
    if @job_post.update_attributes(job_post_params)
      redirect_to @job_post, notice: 'JobPost updated successfully'
    else
      render 'edit', notice: @job_post.errors
    end
  end

  def destroy
  end

  private

  def set_job_post
    @job_post = JobPost.find(params[:id])
  end

  def job_post_params
    params.require(:job_post).permit(:job_title, :user_id, :job_type_id, :company_id,
                                     :is_company_name_hidden, :job_description, :job_location_id,
    :is_active, job_location_attributes:[:id, :street_address, :city, :state, :country, :zip])
  end
end
