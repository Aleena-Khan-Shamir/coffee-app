class Product {
  final int id;
  final String imageUrl;
  final String title;
  final String subtitle;
  final String category;
  final String description;
  final int price;
  final double rating;

  Product({
    required this.id,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.rating,
    required this.price,
    required this.description,
    required this.category,
  });
  static List<Product> home = [
    Product(
      id: 1,
      imageUrl: 'assets/c1.jpg',
      title: 'Cappuccino',
      subtitle: 'With Choclate',
      rating: 4.8,
      category: 'Cappuccino',
      price: 5,
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas in commodo ligula, eu malesuada metus. Integer vel nulla sit amet nulla lobortis sollicitudin nec a quam. Ut cursus facilisis bibendum. Sed lobortis quam turpis, aliquam euismod urna gravida vel. Duis commodo eleifend quam. Curabitur efficitur nisl orci, eget fringilla quam consequat sit amet.',
    ),
    Product(
      id: 2,
      imageUrl: 'assets/c2.jpg',
      title: 'Cappiccino',
      subtitle: 'With Almond Milk',
      rating: 4.8,
      category: 'Cappuccino',
      price: 5,
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas in commodo ligula, eu malesuada metus. Integer vel nulla sit amet nulla lobortis sollicitudin nec a quam. Ut cursus facilisis bibendum. Sed lobortis quam turpis, aliquam euismod urna gravida vel. Duis commodo eleifend quam. Curabitur efficitur nisl orci, eget fringilla quam consequat sit amet.',
    ),
    Product(
        id: 3,
        imageUrl: 'assets/c3.jpg',
        title: 'Cappiccino',
        subtitle: 'With Oat Milk',
        rating: 4.8,
        category: 'Cappuccino',
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas in commodo ligula, eu malesuada metus. Integer vel nulla sit amet nulla lobortis sollicitudin nec a quam. Ut cursus facilisis bibendum. Sed lobortis quam turpis, aliquam euismod urna gravida vel. Duis commodo eleifend quam. Curabitur efficitur nisl orci, eget fringilla quam consequat sit amet.',
        price: 5),
    Product(
        id: 4,
        imageUrl: 'assets/c2.jpg',
        title: 'Latte',
        subtitle: 'With Cocunut',
        rating: 4.8,
        category: 'Latte',
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas in commodo ligula, eu malesuada metus. Integer vel nulla sit amet nulla lobortis sollicitudin nec a quam. Ut cursus facilisis bibendum. Sed lobortis quam turpis, aliquam euismod urna gravida vel. Duis commodo eleifend quam. Curabitur efficitur nisl orci, eget fringilla quam consequat sit amet.',
        price: 5),
    Product(
        id: 5,
        imageUrl: 'assets/c4.jpg',
        title: 'Latte',
        subtitle: 'With Cocunut',
        rating: 4.8,
        category: 'Latte',
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas in commodo ligula, eu malesuada metus. Integer vel nulla sit amet nulla lobortis sollicitudin nec a quam. Ut cursus facilisis bibendum. Sed lobortis quam turpis, aliquam euismod urna gravida vel. Duis commodo eleifend quam. Curabitur efficitur nisl orci, eget fringilla quam consequat sit amet.',
        price: 5),
    Product(
        id: 6,
        imageUrl: 'assets/c2.jpg',
        title: 'Latte',
        subtitle: 'With Cocunut',
        rating: 4.8,
        category: 'Latte',
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas in commodo ligula, eu malesuada metus. Integer vel nulla sit amet nulla lobortis sollicitudin nec a quam. Ut cursus facilisis bibendum. Sed lobortis quam turpis, aliquam euismod urna gravida vel. Duis commodo eleifend quam. Curabitur efficitur nisl orci, eget fringilla quam consequat sit amet.',
        price: 5),
    Product(
        id: 7,
        imageUrl: 'assets/c2.jpg',
        title: 'Latte',
        subtitle: 'With Cocunut',
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas in commodo ligula, eu malesuada metus. Integer vel nulla sit amet nulla lobortis sollicitudin nec a quam. Ut cursus facilisis bibendum. Sed lobortis quam turpis, aliquam euismod urna gravida vel. Duis commodo eleifend quam. Curabitur efficitur nisl orci, eget fringilla quam consequat sit amet.',
        rating: 4.8,
        category: 'Latte',
        price: 5),
    Product(
        id: 8,
        imageUrl: 'assets/c1.jpg',
        title: 'Machiato',
        subtitle: 'With Cocunut',
        rating: 4.8,
        category: 'Machiato',
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas in commodo ligula, eu malesuada metus. Integer vel nulla sit amet nulla lobortis sollicitudin nec a quam. Ut cursus facilisis bibendum. Sed lobortis quam turpis, aliquam euismod urna gravida vel. Duis commodo eleifend quam. Curabitur efficitur nisl orci, eget fringilla quam consequat sit amet.',
        price: 5),
    Product(
        id: 9,
        imageUrl: 'assets/c3.jpg',
        title: 'Machiato',
        subtitle: 'With Cocunut',
        rating: 4.8,
        category: 'Machiato',
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas in commodo ligula, eu malesuada metus. Integer vel nulla sit amet nulla lobortis sollicitudin nec a quam. Ut cursus facilisis bibendum. Sed lobortis quam turpis, aliquam euismod urna gravida vel. Duis commodo eleifend quam. Curabitur efficitur nisl orci, eget fringilla quam consequat sit amet.',
        price: 5),
    Product(
        id: 10,
        imageUrl: 'assets/c2.jpg',
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas in commodo ligula, eu malesuada metus. Integer vel nulla sit amet nulla lobortis sollicitudin nec a quam. Ut cursus facilisis bibendum. Sed lobortis quam turpis, aliquam euismod urna gravida vel. Duis commodo eleifend quam. Curabitur efficitur nisl orci, eget fringilla quam consequat sit amet.',
        title: 'Machiato',
        subtitle: 'With Cocunut',
        rating: 4.8,
        category: 'Machiato',
        price: 5),
    Product(
        id: 11,
        imageUrl: 'assets/c4.jpg',
        title: 'Machiato',
        subtitle: 'With Cocunut',
        rating: 4.8,
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas in commodo ligula, eu malesuada metus. Integer vel nulla sit amet nulla lobortis sollicitudin nec a quam. Ut cursus facilisis bibendum. Sed lobortis quam turpis, aliquam euismod urna gravida vel. Duis commodo eleifend quam. Curabitur efficitur nisl orci, eget fringilla quam consequat sit amet.',
        category: 'Machiato',
        price: 5),
  ];
}
