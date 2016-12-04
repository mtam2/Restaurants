module RatingsHelper
    # Possible replace restaurant_id input with restaurant_name if requested
    def get_restaurant_names
        names_list = Restaurant.find_by_sql("SELECT restaurant_name FROM restaurants")
        return names_list
    end
    
    def user_id_validation
        User.find_by_sql("SELECT max(id) FROM users")
    end
    
    def restaurant_id_validation
        Restaurant.find_by_sql("SELECT max(id) FROM restaurants")
    end
end
