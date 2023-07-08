class Plant {
  final int plantId;
  final int price;
  final String size;
  final double rating;
  final String category;
  final String temp;
  final String imageUrl;
  final String plantName;
  final int humidity;
  final bool isFavorated;
  final String description;

  Plant({
    required this.plantId,
    required this.price,
    required this.size,
    required this.rating,
    required this.category,
    required this.temp,
    required this.imageUrl,
    required this.humidity,
    required this.isFavorated,
    required this.description,
    required this.plantName,
  });

  List<Plant> plantList = [
  Plant(
    plantId: 1,
    price: 20,
    size: 'Medium',
    rating: 4.5,
    category: 'Indoor',
    temp: '18-24°C',
    imageUrl: 'https://example.com/plant1.jpg',
    humidity: 60,
    isFavorated: false,
    description: 'This is a beautiful plant with green leaves.',
    plantName: 'Green Leaf Plant',
  ),
  Plant(
    plantId: 2,
    price: 15,
    size: 'Small',
    rating: 4.2,
    category: 'Outdoor',
    temp: '20-30°C',
    imageUrl: 'https://example.com/plant2.jpg',
    humidity: 70,
    isFavorated: true,
    description: 'This plant has colorful flowers and requires sunlight.',
    plantName: 'Colorful Flower Plant',
  ),
  Plant(
    plantId: 3,
    price: 25,
    size: 'Large',
    rating: 4.8,
    category: 'Indoor',
    temp: '16-22°C',
    imageUrl: 'https://example.com/plant3.jpg',
    humidity: 65,
    isFavorated: true,
    description: 'This plant has tall stems and needs partial shade.',
    plantName: 'Tall Stem Plant',
  ),
  Plant(
    plantId: 4,
    price: 18,
    size: 'Small',
    rating: 3.9,
    category: 'Outdoor',
    temp: '22-28°C',
    imageUrl: 'https://example.com/plant4.jpg',
    humidity: 75,
    isFavorated: false,
    description: 'This plant is drought-tolerant and has succulent leaves.',
    plantName: 'Succulent Plant',
  ),
  Plant(
    plantId: 5,
    price: 30,
    size: 'Medium',
    rating: 4.6,
    category: 'Indoor',
    temp: '20-26°C',
    imageUrl: 'https://example.com/plant5.jpg',
    humidity: 55,
    isFavorated: true,
    description: 'This plant has variegated leaves and requires indirect light.',
    plantName: 'Variegated Leaf Plant',
  ),
  Plant(
    plantId: 6,
    price: 12,
    size: 'Small',
    rating: 4.1,
    category: 'Outdoor',
    temp: '18-25°C',
    imageUrl: 'https://example.com/plant6.jpg',
    humidity: 70,
    isFavorated: false,
    description: 'This plant produces aromatic flowers and attracts butterflies.',
    plantName: 'Aromatic Flower Plant',
  ),
  Plant(
    plantId: 7,
    price: 35,
    size: 'Large',
    rating: 4.9,
    category: 'Indoor',
    temp: '16-20°C',
    imageUrl: 'https://example.com/plant7.jpg',
    humidity: 60,
    isFavorated: true,
    description: 'This plant has large leaves and thrives in low light conditions.',
    plantName: 'Low Light Plant',
  ),
  Plant(
    plantId: 8,
    price: 22,
    size: 'Medium',
    rating: 4.3,
    category: 'Outdoor',
    temp: '22-30°C',
    imageUrl: 'https://example.com/plant8.jpg',
    humidity: 75,
    isFavorated: true,
    description: 'This plant is known for its vibrant and long-lasting blooms.',
    plantName: 'Bloomful Plant',
  ),
  Plant(
    plantId: 9,
    price: 17,
    size: 'Small',
    rating: 3.7,
    category: 'Indoor',
    temp: '18-24°C',
    imageUrl: 'https://example.com/plant9.jpg',
    humidity: 55,
    isFavorated: false,
    description: 'This plant has delicate foliage and requires high humidity.',
    plantName: 'Delicate Foliage Plant',
  ),
  Plant(
    plantId: 10,
    price: 28,
    size: 'Large',
    rating: 4.7,
    category: 'Outdoor',
    temp: '20-28°C',
    imageUrl: 'https://example.com/plant10.jpg',
    humidity: 65,
    isFavorated: true,
    description: 'This plant is a climbing vine and adds a tropical touch to any space.',
    plantName: 'Climbing Vine Plant',
  ),
  Plant(
    plantId: 11,
    price: 19,
    size: 'Medium',
    rating: 4.4,
    category: 'Indoor',
    temp: '22-26°C',
    imageUrl: 'https://example.com/plant11.jpg',
    humidity: 60,
    isFavorated: false,
    description: 'This plant has heart-shaped leaves and requires moderate watering.',
    plantName: 'Heart Leaf Plant',
  ),
  Plant(
    plantId: 12,
    price: 14,
    size: 'Small',
    rating: 4.0,
    category: 'Outdoor',
    temp: '18-25°C',
    imageUrl: 'https://example.com/plant12.jpg',
    humidity: 70,
    isFavorated: true,
    description: 'This plant is a low-maintenance ground cover and spreads rapidly.',
    plantName: 'Ground Cover Plant',
  ),
  Plant(
    plantId: 13,
    price: 32,
    size: 'Large',
    rating: 4.9,
    category: 'Indoor',
    temp: '16-22°C',
    imageUrl: 'https://example.com/plant13.jpg',
    humidity: 55,
    isFavorated: true,
    description: 'This plant has vibrant foliage colors and thrives in high humidity.',
    plantName: 'Colorful Foliage Plant',
  ),
  Plant(
    plantId: 14,
    price: 21,
    size: 'Medium',
    rating: 4.3,
    category: 'Outdoor',
    temp: '20-30°C',
    imageUrl: 'https://example.com/plant14.jpg',
    humidity: 75,
    isFavorated: false,
    description: 'This plant has a compact growth habit and is ideal for small spaces.',
    plantName: 'Compact Plant',
  ),
  Plant(
    plantId: 15,
    price: 12,
    size: 'Large',
    rating: 4.8,
    category: 'Indoor',
    temp: '16-22°C',
    imageUrl: 'https://example.com/plant15.jpg',
    humidity: 65,
    isFavorated: true,
    description: 'This plant has broad leaves and needs frequent watering.',
    plantName: 'Broadleaf Plant',
  ),
];

}
