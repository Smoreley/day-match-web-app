class AnswersController < ApplicationController

    def create
        
        if params[:ans] == "true" 
            user_answer = true;
        elsif params[:ans] == "false"
            user_answer = false;
        end 
        
        Answer.create(user_id: params[:user_id],
            question_id: params[:question_id],
            ans: user_answer )
        
        redirect_to get_questions_url
    end

end
