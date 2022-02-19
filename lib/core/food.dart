class Food {
  final String name;
  final String descricao;
  final String longDescription;
  final double price;
  final String urlImage;

  const Food(this.name, this.descricao, this.price, this.longDescription,
      this.urlImage);

  getName() {
    return name;
  }

  getDescription() {
    return descricao;
  }

  getPrice() {
    return price;
  }

  getLongDescription() {
    return longDescription;
  }

  getUrlImage() {
    return urlImage;
  }
}
