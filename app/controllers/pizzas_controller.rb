class PizzasController < ApplicationController
    def index
        @pizzas = Pizza.all
        render json: @pizzas
    end

    def show
        @pizza = Pizza.find(params[:id])
        render json: @pizza
    end

    def create
        @pizza = Pizza.new(pizza_params)
        render json: @pizza
    end

    def update
        @pizza = Pizza.find(params[:id])
        @pizza.update(pizza_params)
        render json: @pizza

    end

    def destroy
        @pizza = Pizza.find(params[:id])
        @pizza.destroy
        render json: @pizza
    end

    private
    
    def pizza_params
        params.require(:pizza).permit(:name, :ingredients)
    end

end
