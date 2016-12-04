module RatingsHelper
    def get_restaurant_names
        names_list = Restaurant.find_by_sql("SELECT restaurant_name FROM restaurants")
        return names_list
    end
end
