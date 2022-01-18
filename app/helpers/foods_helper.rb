module FoodsHelper
    def get_color_from_id(id)
        colors = ["orange", "emerald", "sky", "rose"]
        colors[id - 1]
    end
end
