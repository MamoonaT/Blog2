class AccountsController < ApplicationController
    
    def index
    end

    def new
      @account = Account.new
    end

    def create
        @account = Account.new(account_params)
    end

    def show
      @accounts = Account.new(params[@student_id])  
    end
    


private

    def account_params
        params.require(:account).permit(:account_name, :account_number, :user_id)
    end
end
