class WelcomeController < ApplicationController
    def index
        render json: { status: 200, message: "Tonus Mood API" }
      end
end
