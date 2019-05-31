module TransactionsHelper

  def order_direction(column)
    if params[:order]
      direction_map[params[:order][column]]
    else
      "asc"
    end
  end

  private

  def direction_map
    map = {
      "asc" => "desc",
      "desc" => "asc"
    }
    map.default = "asc"
    map
  end

end
