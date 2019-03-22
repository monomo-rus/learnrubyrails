class AnswersController < ApplicationController

  def index
  	@answers = Answer.all
  end

  def show
  	# @answer = Answer.find(params[:id])
  end
 
  def new
  	@answer = Answer.new
  end

  def edit
  end

  def create

    @answer = Answer.new(answer_params)

    if @answer.save
    	flash[:notice] = "Спасибо! Мы запомнили твое предсказание."
    	redirect_to new_answer_path
    else
    	flash[:alert] = "Уууууупс...ошибка, фраза не сохранена, попробуй еще раз!"
    	redirect_to new_answer_path
    end

  end

  def update
  end

  def destroy
  	@answer = Answer.find(params[:id])
    @answer.destroy

    redirect_to answers_path
  end


  private
    def answer_params
      params.require(:answer).permit(:title)
    end


end
