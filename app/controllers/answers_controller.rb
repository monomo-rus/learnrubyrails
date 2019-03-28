class AnswersController < ApplicationController

  http_basic_authenticate_with name: "adminm8b", password: "<JHOX", except: [:new, :m8ball]

  def index
  	@answers = Answer.all
  end
 
  def new
  	@answer = Answer.new
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

  def destroy
  	@answer = Answer.find(params[:id])
    @answer.destroy

    redirect_to answers_path
  end


  def m8ball

    @m8ball = Answer.order_by_rand.limit(1).all

  end


  private
    def answer_params
      params.require(:answer).permit(:title)
    end

end
