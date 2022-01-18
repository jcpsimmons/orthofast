class FoodsController < ApplicationController
    before_action :redirect_if_bad_code

    def show
        @fasting_code = params[:restriction_code].to_i
        redirect_bad_code if @fasting_code < 1 || @fasting_code > 4
        @title = title_for_code(@fasting_code)
        @food_data = food_data_for_code(@fasting_code)
    end

    private

    def redirect_if_bad_code
        restriction_code = params[:restriction_code].to_i
        unless restriction_code > 0 && restriction_code < 5
            redirect_to root_path
        end
    end

    def title_for_code(code)
        Food.where(fasting_code: code).first.name
    end

    def food_data_for_code(code)
        codes = []
        while code > 0 do
            codes << code
            code -= 1
        end

        Food.where(fasting_code: codes).order("RANDOM()").limit(10)
    end
end
