
/*
 * Drinks, Predefined.
 * * * */
enum Drinks {
  Cola,
  Sprite,
  Beer,
  Wine,
  Coffee,
  Thea
}

/*
 * DrinkManager, stores the order.
 * * * */
class DrinkManager {

  List _order = [];

  /// Add an order to the list.
  void addOrder(Drinks newDrink) {
    this._order.add(newDrink);
  }

  // Get the final order.
  List getOrder() {
    return this._order;
  }

  // Create a new order.
  void setOrder(newOrder) {
    this._order = newOrder;
  }


}

