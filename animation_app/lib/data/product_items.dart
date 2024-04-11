import 'package:animation_app/domain/entities/product_model.dart';

const String descriptionText = """
    Quis enim et sint elit ea occaecat ad quis deserunt adipisicing dolor consectetur enim. 
    Ullamco minim magna labore ea in qui eiusmod Lorem duis sit sit. In mollit reprehenderit qui 
    reprehenderit eiusmod aute qui. Anim aute nulla amet sint ex cupidatat ut nisi eu non. Vo
    luptate velit deserunt aute cupidatat occaecat do
    """;
final List<Product> products = [
  Product(
    name: "iPhone - FadeTransition",
    description: descriptionText,
    price: 1000,
    image: "iphone.png",
  ),
  Product(
    name: "Pixel - SlideTransition",
    description: descriptionText,
    price: 800,
    image: "pixel.png",
  ),
  Product(
    name: "Laptop - RotationTransition",
    description: descriptionText,
    price: 2000,
    image: "laptop.png",
  ),
  Product(
    name: "Tablet - ScaleTransition",
    description: descriptionText,
    price: 1500,
    image: "tablet.png",
  ),
  Product(
    name: "Oppo - MyAnimatedWidget",
    description: descriptionText,
    price: 700,
    image: "oppo.png",
  ),
];
