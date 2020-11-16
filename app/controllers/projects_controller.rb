class ProjectsController < ApplicationController
	before_action :authenticate_user!
  def index
    @projects = Project.all
  end
 def show
 	@project = Project.find(params[:id])
 end
   def new
    @project = Project.new()
  end
  def create
  	puts "========================"
  	puts Project.inspect
    @project = Project.new(project_params)
    @project.user_id = current_user.id
    @project.project_type = params[:project][:project_type]
    puts @project.inspect
    # puts 

    respond_to do |format|
      if @project.save
        format.html { redirect_to @project, notice: 'Project was successfully created.' }
        format.json { render :show, status: :created, location: @project }
      else
        format.html { render :new }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end
  def project_params
      params.require(:project).permit(:title, :text)
    end
end
