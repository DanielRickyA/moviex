class Movie {
  int id;
  String name;
  String poster;
  List<String> category;
  String duration;
  String description;
  double rating;
  Movie({
    required this.id,
    required this.name,
    required this.poster,
    required this.category,
    required this.duration,
    required this.description,
    required this.rating,
  });
}

var movieList = [
  Movie(
      id: 1,
      name: "Spider-Man: Into the Spider-Verse",
      poster: "img/poster1.jpg",
      category: [
        "Action",
        "Comedy",
        "Superhero",
        "Animated Cartoon",
        "Adventure",
        "Science fiction comedy"
      ],
      duration: "1h 56m",
      description:
          "After gaining superpowers from a spider bite, Miles Morales protects the city as Spider-Man. Soon, he meets alternate versions of himself and gets embroiled in an epic battle to save the multiverse.",
      rating: 8.4),
  Movie(
      id: 2,
      name: "Black Panther",
      poster: "img/poster2.jpg",
      category: [
        "Action",
        "Superhero",
        "Science-fiction",
        "Adventure",
        "Fantasy",
      ],
      duration: " 2h 15m",
      description:
          "After his father's death, T'Challa returns home to Wakanda to inherit his throne. However, a powerful enemy related to his family threatens to attack his nation.",
      rating: 7.3),
  Movie(
      id: 3,
      name: "Avengers: Endgame",
      poster: "img/poster3.jpg",
      category: [
        "Action",
        "Superhero",
        "Comedy",
        "Adventure",
        "Science-fiction",
        "Fantasy",
        "Drama",
      ],
      duration: "3h 1m",
      description:
          "After Thanos, an intergalactic warlord, disintegrates half of the universe, the Avengers must reunite and assemble again to reinvigorate their trounced allies and restore balance.",
      rating: 8.4),
  Movie(
      id: 4,
      name: "The Dark Knight",
      poster: "img/poster4.jpg",
      category: [
        "Action",
        "Superhero",
        "Thriller",
        "Science-fiction",
        "Noir",
        "Mystery",
        "Crime film"
      ],
      duration: "2h 2m",
      description:
          "Arthur Fleck, a party clown, leads an impoverished life with his ailing mother. However, when society shuns him and brands him as a freak, he decides to embrace the life of crime and chaos.",
      rating: 8.4),
  Movie(
      id: 5,
      name: "Joker (2019)",
      poster: "img/poster5.jpg",
      category: [
        "Horror",
        "Thriller",
        "Crime film",
        "Psychological thriller",
        "Drama",
        "Crime Fiction",
      ],
      duration: "2h 7m",
      description:
          "Deadpool's peaceful existence comes crashing down when the Time Variance Authority recruits him to help safeguard the multiverse. He soon unites with his would-be pal, Wolverine, to complete the mission and save his world from an existential threat.",
      rating: 7.7),
  Movie(
      id: 6,
      name: "The Death of Superman",
      poster: "img/poster6.jpg",
      category: [
        "Action",
        "Comedy",
        "Superhero",
        "Science-fiction",
        "Adventure"
      ],
      duration: "1h 21m",
      description:
          "Doomsday, a monstrous humanoid, emerges from a meteorite and runs wild in the city. However, Superman, along with the Justice League decide to put down the monster for good.",
      rating: 7.3),
  Movie(
      id: 7,
      name: "Deadpool & Wolverine",
      poster: "img/poster7.jpeg",
      category: [
        "Action",
        "Comedy",
        "Superhero",
        "Science-fiction",
        "Adventure"
      ],
      duration: "2h 7m",
      description:
          "Deadpool's peaceful existence comes crashing down when the Time Variance Authority recruits him to help safeguard the multiverse. He soon unites with his would-be pal, Wolverine, to complete the mission and save his world from an existential threat.",
      rating: 7.7),
  Movie(
      id: 8,
      name: "Guardians of the Galaxy",
      poster: "img/poster8.jpg",
      category: [
        "Action",
        "Science-fiction",
        "Comedy",
        "Superhero",
        "Adventure",
        "Fantasy",
      ],
      duration: "2h 2m",
      description:
          "A bunch of skilled criminals led by brash adventurer Peter Quill join hands to fight a villain named Ronan the Accuser who wants to control the universe with the help of a mystical orb.",
      rating: 8.0),
  Movie(
      id: 9,
      name: "The Suicide Squad",
      poster: "img/poster9.png",
      category: [
        "Action",
        "Comedy",
        "Superhero",
        "Adventure",
        "Science-fiction",
        "Fantasy",
        "Crime Fiction",
        "Thriller",
        "Drama",
      ],
      duration: "2h 12m",
      description:
          "A government agent manipulates supervillains to become a part of a dangerous team in exchange for reduced sentences. They get sent to Corto Maltese, where they must destroy a laboratory.",
      rating: 7.2),
  Movie(
      id: 10,
      name: "The Amazing Spider-Man",
      poster: "img/poster10.jpg",
      category: [
        "Action",
        "Romance",
        "Superhero",
        "Science-fiction",
        "Adventure",
        "Fantasy",
        "Action/Adventure",
        "Drama",
        "Thriller",
      ],
      duration: "2h 16m",
      description:
          "Peter Parker, an outcast high school student, gets bitten by a radioactive spider and attains superpowers. While unraveling his parents' disappearance, he must fight against the Lizard.",
      rating: 6.9),
  Movie(
      id: 11,
      name: "Zack Snyder's Justice League",
      poster: "img/poster11.jpg",
      category: [
        "Action",
        "Superhero",
        "Science-fiction",
        "Adventure",
        "Fantasy",
        "Drama",
      ],
      duration: "4h 2m",
      description:
          "Bruce Wayne and Diana Prince try to bring the metahumans of Earth together after the death of Clark Kent. Meanwhile, Darkseid sends Steppenwolf to Earth with a vast army to subjugate humans.",
      rating: 7.9),
  Movie(
      id: 12,
      name: "The Batman",
      poster: "img/poster12.jpg",
      category: [
        "Action",
        "Superhero",
        "Science-fiction",
        "Crime film",
        "Adventure",
        "Mystery",
        "Drama",
        "Thriller",
        "Crime Fiction",
      ],
      duration: "2h 56m",
      description:
          "Batman is called to intervene when the mayor of Gotham City is murdered. Soon, his investigation leads him to uncover a web of corruption, linked to his own dark past.",
      rating: 7.8),
];
