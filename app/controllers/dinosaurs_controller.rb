class DinosaursController < ApplicationController
  def index
    @dinosaurs = Dinosaur.all
  end

  def new
    @dinosaur = Dinosaur.new
  end

  def show
    @dinosaur = Dinosaur.find(params[:id])
  end

  def create
    #dinosaur_params = params.require(:dinosaur).permit(:name, :age, :image_url)
    @dinosaur = Dinosaur.new(dinosaur_params)

    if @dinosaur.save
       redirect_to @dinosaur
#       redirect_to dinosaurs_path (of terug naar home)
    else
      render 'new'
    end
  end

  def edit
    @dinosaur = Dinosaur.find(params[:id])
  end

  def update
    @dinosaur = Dinosaur.find(params[:id])

    #dinosaur_params = params.require(:dinosaur).permit(:name, :age, :description)
    @dinosaur = Dinosaur.new(dinosaur_params)

    if @dinosaur.update_attributes(dinosaur_params)
      redirect_to @dinosaur
    else
      render 'edit'
    end
  end

  def destroy
    @dinosaur = Dinosaur.find(params[:id])
    @dinosaur.destroy
    redirect_to dinosaurs_path
  end

  private
  def dinosaur_params
    params.require(:dinosaur).permit(:name, :age, :description)
  end

end
