class Movie {
  final String title;
  final String assetImage;
  final String type;
  final String duration;
  final String rating;
  final String synopsis;
  final bool isPlaying;

  Movie({
    required this.title,
    required this.assetImage,
    required this.type,
    required this.duration,
    required this.rating,
    required this.synopsis,
    required this.isPlaying,
  });
}

final nowPlayingMovie = [
  Movie(
    title: "Minions: The Rise of Gru",
    assetImage: "assets/minion.jpeg",
    type: "Action",
    duration: "1h 27m",
    rating: "7.7/10",
    synopsis:
        "A fanboy of a supervillain supergroup known as the Vicious 6, Gru hatches a plan to become evil enough to join them, with the backup of his followers, the Minions.",
    isPlaying: true,
  ),
  Movie(
    title: "Do revenge",
    assetImage: "assets/do_Revenge.jpeg",
    type: "Drama",
    duration: "1h 59m",
    rating: "7.0/10",
    synopsis:
        "Popular Drea wants revenge on her boyfriend for publishing her sex tape, and exchange student Eleanor is haunted by a rumour. The two teenagers team up to take action against their tormentors.",
    isPlaying: true,
  ),
  Movie(
    title: "Halloween Ends",
    assetImage: "assets/halloween_ends.jpeg",
    type: "Action",
    duration: "2h 29m",
    rating: "8.0/10",
    synopsis:
        "Four years after Isla Nublar was destroyed, dinosaurs now live—and hunt—alongside humans all over the world. This fragile balance will reshape the future and determine, once and for all, whether human beings are to remain the apex predators on a planet they now share with history's most fearsome creatures.",
    isPlaying: true,
  ),
];

final upcoming = [
  Movie(
    title: "Amsterdam",
    assetImage: "assets/amsterdam.jpeg",
    type: "Animation",
    duration: "1h 46m",
    rating: "N/A",
    synopsis:
        "When Superman and the rest of the Justice League are kidnapped, Krypto the Super-Dog must convince a rag-tag shelter pack - Ace the hound, PB the potbellied pig, Merton the turtle and Chip the squirrel - to master their own newfound powers and help him rescue the superheroes.",
    isPlaying: false,
  ),
  Movie(
    title: "Bharyat",
    assetImage: "assets/bharyat.jpeg",
    type: "Science Fiction",
    duration: "2h 11m",
    rating: "N/A",
    synopsis:
        "Residents in a lonely gulch of inland California bear witness to an uncanny, chilling discovery.",
    isPlaying: false,
  ),
  Movie(
    title: "Black Adam",
    assetImage: "assets/black_Adam.jpeg",
    type: "Drama",
    duration: "1h 46m",
    rating: "N/A",
    synopsis:
        "A dramatization of the rescue of a boys soccer team from an underground cave in Thailand.",
    isPlaying: false,
  ),
];