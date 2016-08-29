class JobsController < ApplicationController
  def index
    @jobs = Job.all
  end

  def show
  end

  def create
    @job = Job.new(params[:job])
    @skills = Skill.where(:id => params[:skills])
    @job.skills << @skills
  end

  def update
    @job = Job.find(params[:id])
    @skills = Skill.where(:id => params[:skill])
    @job.skills.destroy_all
    @job.skills << @skills
  end
end
