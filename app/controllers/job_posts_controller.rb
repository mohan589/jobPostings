class JobPostsController < ApplicationController
  before_action :set_job_post, only: [:edit, :show, :update, :destroy, :apply]

  def index
  end

  def show
  end

  def new
    @job_post = JobPost.new
    @job_post.build_job_location
  end

  def apply
    if current_user.present?
      if JobPostActivity.new_activity(@job_post, current_user)
        puts 'done'
      else
        render @job_post, notice: @job_post.errors
      end
    else
      redirect_to new_user_session_path, notice: 'You need to SignIn before apply for the Job'
    end
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
    params.require(:job_post).permit(:job_title, :user_id, :exp_required, :salary, :job_type_id, :company_id, :is_company_name_hidden, :job_description, :job_location_id, :is_active, :key_skills => [], :job_location_attributes => [:id, :street_address, :city, :state, :country, :zip])
  end
end
