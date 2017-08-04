class JobsController < ApplicationController
  before_action :set_job, only: [:show, :edit, :update]
# To authenticate before can add jobs
  before_action :authenticate_user!, except: [:show]

  def index
    @jobs = current_user.jobs.paginate(page: params[:page], per_page: 1)
  end

  def show
    @photos = @job.photos
  end

  def new
    @job = current_user.jobs.build
  end

  def create
    @job = current_user.jobs.build(job_params)

    if @job.save
      if params[:images]
        params[:images].each do |image|
          @job.photos.create(image: image)
        end
      end
      @photos = @job.photos
      redirect_to edit_job_path(@job), notice: "Saved.."
    else
      render :new
    end
  end

  def edit
    if current_user.id == @job.user.id
      @photos = @job.photos
    else 
      redirect_to root_path, notice: "You dont have permission"
    end
  end

  def update
    if @job.update(job_params)
      
      if params[:images]
        params[:images].each do |image|
          @job.photos.create(image: image)
        end
      end
   
      redirect_to edit_job_path(@job), notice: "Updated.."
    else
      render :edit
    end
  end

  private 
    def set_job
      @job = Job.find(params[:id])
    end

    def job_params
      params.require(:job).permit(:industry_type, :job_type, :company_name, :job_status,:job_position, :salary, :job_description, :job_skills, :education, :address, :active)
    end
end

