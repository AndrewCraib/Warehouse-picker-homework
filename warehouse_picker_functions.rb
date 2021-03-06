require 'pry-byebug'


WAREHOUSE = [
      :a10 => "rubberband",
      :a9 => "glow stick",
      :a8 => "model car",
      :a7 => "bookmark",
      :a6 => "shovel",
      :a5 => "rubber duck",
      :a4 => "hanger",
      :a3 => "blouse",
      :a2 => "stop sign",
      :a1 => "needle",
      :c1 => "rusty nail",
      :c2 => "drill press",
      :c3 => "chalk",
      :c4 => "word search",
      :c5 => "thermometer",
      :c6 => "face wash",
      :c7 => "paint brush",
      :c8 => "candy wrapper",
      :c9 => "shoe lace",
      :c10 => "leg warmers",
      :b1 => "tire swing",
      :b2 => "sharpie",
      :b3 => "picture frame",
      :b4 => "photo album",
      :b5 => "nail filer",
      :b6 => "tooth paste",
      :b7 => "bath fizzers",
      :b8 => "tissue box",
      :b9 => "deodorant",
      :b10 => "cookie jar"
    ]


# *****************************************************
    
    def search_by_shelf(bay)
      WAREHOUSE[bay]
    end

# *****************************************************


    def search_by_item(item)
      WAREHOUSE.key(item)
    end

# *****************************************************


    def get_list_of_shelves(list_of_shelves)
    list_of_items = []
      for shelf in list_of_shelves
        list_of_items.push(search_by_shelf(shelf))
      end
      return list_of_items
    end

# *****************************************************


    def get_list_of_items(list_of_items)
    list_of_shelves = []
      for item in list_of_items
        list_of_shelves.push(search_by_item(item))
      end
      return list_of_shelves
    end

    # *****************************************************

    # def get_distance_of_locations(list_of_shelves)
    #   items = []
    #   position=[]
    #   for shelf in list_of_shelves
    #     for item in list_of_items
    #       if shelf == item.keys[0]
    #         items.push(item.values[0])
    #         position.push(list_of_items.index(item))
    #         return items << position.max - position.min
    #       end    
    #     end
    #   end
    # end



















