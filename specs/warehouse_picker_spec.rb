require 'minitest/autorun'
require_relative '../warehouse_picker_functions.rb'


class TestWarehouse < Minitest::Test


# ****************************************************************

  def test_search_by_shelf
    item = search_by_shelf(:b5)
    assert_equal('nail filer', item)
  end

# *****************************************************************

  def test_search_by_item
    shelf = search_by_item('nail filer')
    assert_equal(:b5, shelf)
  end
 
# ****************************************************************

  def test_get_list_of_shelves
    list_of_shelves = get_list_of_shelves([:b5, :b10, :b6])
    assert_equal(["nail filer", "cookie jar", "tooth paste"], list_of_shelves)
  end

# ***************************************************************

  def test_get_list_of_items
    list_of_item = get_list_of_items(["nail filer", "cookie jar", "tooth paste"])
    assert_equal([:b5, :b10, :b6], list_of_item)
  end
end
# ***************************************************************

#   def test_get_distance_of_locations
#     list_of_shelves = get_distance_of_locations([:b3, :c7, :c9, :a3])
#     assert_equal(["picture frame", "paint brush", "shoe lace", "blouse", 15], list_of_shelves)
#   end

​
