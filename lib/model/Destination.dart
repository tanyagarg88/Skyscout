class Destination {
  final String name;
  final String description;
  final double rating;
  final String image;

  Destination({
    required this.name,
    required this.description,
    required this.rating,
    required this.image,
  });
}

class DestinationData {
  static final List<Destination> destinations = [
    Destination(
      name: 'Manali',
      description: 'A beautiful hill station surrounded by mountains.',
      rating: 4.5,
      image:
      'https://static.toiimg.com/thumb/114547577/Northeast.jpg?width=636&height=358&resize=4',
    ),
    Destination(
      name: 'Goa',
      description: 'Famous for its beaches and vibrant nightlife.',
      rating: 4.7,
      image: 'https://worldoflina.com/wp-content/uploads/2020/12/Goa-Beach.jpg',
    ),
    Destination(
      name: 'Jaipur',
      description: 'Known as the Pink City, rich in culture and heritage.',
      rating: 4.2,
      image:
      'https://www.tourism.rajasthan.gov.in/content/dam/rajasthan-tourism/english/city/explore/103.jpg',
    ),
    // Add other destinations similarly...
  ];
}
