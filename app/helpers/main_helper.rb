module MainHelper
    def  get_restaurant_list(username = '')
        visited = Restaurant.find_by_sql("SELECT restaurant_name, phone, address, menu, date, ROUND(AVG(rating),2) \"Average\"
                                            FROM restaurants
                                            JOIN ratings ON restaurants.id = ratings.restaurant_id 
                                            JOIN users ON users.id = ratings.user_id 
                                            WHERE username = '#{params[:username]}'
                                            GROUP BY restaurant_name, phone, address, menu, date
                                            ORDER BY date ASC, avg(rating) DESC;
                                            ")
        not_visited = Restaurant.find_by_sql("SELECT restaurant_name, phone, address, menu, ROUND(AVG(rating),2) \"Average\"
                                            FROM restaurants
                                            JOIN ratings ON restaurants.id = ratings.restaurant_id 
                                            JOIN users ON users.id = ratings.user_id 
                                            WHERE username != '#{params[:username]}' 
                                            GROUP BY restaurant_name, phone, address, menu, date
                                            ORDER BY avg(rating) DESC;
                                            ")
        restaurant_list = visited + not_visited
        restaurant_list = restaurant_list.uniq { |x| x.restaurant_name };
        return restaurant_list
    end
end
