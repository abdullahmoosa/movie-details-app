import 'package:flutter/material.dart';

class Movie {
  final String id;
  final String title;
  final String imageUrl;
  final String rating;
  final String year;
  final String duration;
  final String description;
  Movie(
      {required this.id,
      required this.title,
      required this.imageUrl,
      required this.duration,
      required this.rating,
      required this.year,
      required this.description});
}

final movieList = [
  Movie(
      id: 'tt4154796',
      title: 'Doctor Strange and the Multiverse of Madness',
      imageUrl:
          'https://cdn.mos.cms.futurecdn.net/zMiDYjgPdKaeBMH4sUUJ9i-970-80.jpg.webp',
      description:
          'Five months after his appearance in Spider-Man: No Way Home, Doctor Strange returns in the Multiverse of Madness. Having unleashed the multiverse, the former Sourceror Supreme (thats now Wong) must deal with the consequences of his actions.',
      rating: 'TBD',
      year: '2022',
      duration: '126 min'),
  Movie(
      id: 'tt7286456',
      title: 'Top Gun: Maverick',
      imageUrl:
          'https://cdn.mos.cms.futurecdn.net/B4Tfs5Ak5um4afN6FqmuaA-970-80.jpg.webp',
      description:
          'For 35 years we’ve felt the need, the need for speed. Given the three-decade wait for Tom Cruise to return as Navy pilot Pete ‘Maverick’ Mitchell in a Top Gun sequel, its further delay due to the pandemic has been especially unfortunate.',
      rating: 'TBD',
      year: '2022',
      duration: '131 min'),
  Movie(
      id: 'tt9248972',
      title: 'Jurassic World: Dominion',
      imageUrl:
          'https://cdn.mos.cms.futurecdn.net/bmouRH5oxsoAV2aFmYzb47-970-80.jpg.webp',
      description:
          'Jurassic World was set in a functioning park, and sequel Fallen Kingdom spanned an island, a boat, and a creepy mansion. Jurassic World: Dominion, Colin Trevorrow tells Total Film, “is around the whole world”. With the creatures – and their DNA – escaping into the open at the end of the last film, the world is now their playground. ',
      rating: 'TBD',
      year: '2022',
      duration: '146 min'),
  Movie(
      id: 'tt7349950',
      title: 'Thor: Love and Thunder',
      imageUrl:
          'https://cdn.mos.cms.futurecdn.net/MfxB4FVTbWkshDCoTHBNAc-970-80.jpg.webp',
      description:
          'Inspired by Jason Aaron’s comics arc The Mighty Thor, the set-up certainly looks "full-blown." A spin on Thor lore sees Natalie Portman’s Jane Foster lifting Mjolnir – perhaps she will also pick up the cancer storyline from Aaron’s run.',
      rating: 'TBD',
      year: '2022',
      duration: '133 min'),
  Movie(
      id: 'tt6806448',
      title: 'Halloween Ends',
      imageUrl:
          'https://cdn.mos.cms.futurecdn.net/vQjitbGhC4e8wJy2q4mA96-970-80.jpg.webp',
      description:
          '"I would say, given what I know about the next movie, I think it will be the last time that I will play her," Jamie Lee Curtis tells Total Film of returning as Laurie Strode in the final part to the rebooted Halloween trilogy. ',
      rating: 'TBD',
      year: '2022',
      duration: '105 min'),
  Movie(
      id: 'tt6105098',
      title: 'Avatar 2',
      imageUrl:
          'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTSpxAT5IxlBjs7lG4CT5Y46aNfYIN6HHc5LiVoCMEAQmimRA-T',
      description:
          'Despite the exceedingly long wait – Avatar arrived to smash box-office records back in 2009 – the sequel is nearly upon us. So what took so long? In large part, producer Jon Landau says, it was down to writing not one but four scripts for the planned series of sequels up to Avatar 5.',
      rating: '7.1',
      year: '2019',
      duration: '118 min'),
];

final topRatedMovieList = [
  Movie(
      id: 'tt1375666',
      title: 'The Batman',
      imageUrl:
          'https://m.media-amazon.com/images/M/MV5BOGE2NWUwMDItMjA4Yi00N2Y3LWJjMzEtMDJjZTMzZTdlZGE5XkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_.jpg',
      description:
          'When the Riddler, a sadistic serial killer, begins murdering key political figures in Gotham, Batman is forced to investigate the city\'s hidden corruption and question his family\'s involvement.',
      rating: '8.3',
      year: '2022',
      duration: '176 min'),
  Movie(
      id: 'tt0468569',
      title: 'In Search of Tomorrow',
      imageUrl:
          'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/n7tRI2GK1fLnXcmNO8cpFBAtSO2.jpg',
      description:
          'A nostalgic journey through \'80s sci-fi films, exploring their impact and relevance today, told by the artists who made them and by those who were inspired to turn their visions into reality.',
      rating: '8.2',
      year: '2022',
      duration: '301 min'),
  Movie(
      id: 'tt0816692',
      title: 'The Northman',
      imageUrl: 'http://www.impawards.com/2022/posters/northman_ver2.jpg',
      description:
          'From visionary director Robert Eggers comes The Northman, an action-filled epic that follows a young Viking prince on his quest to avenge his father\'s murder.',
      rating: '7.9',
      year: '2022',
      duration: '169 min'),
  Movie(
      id: 'tt4633694',
      title: 'Operation Fortune: Ruse de guerre',
      imageUrl:
          'https://boxofficediary.com/wp-content/uploads/2022/01/Untitled-design-10-768x370.jpg',
      description:
          'Special agent Orson Fortune and his team of operatives recruit one of Hollywood\'s biggest movie stars to help them on an undercover mission when the sale of a deadly new weapons technology threatens to disrupt the world order.',
      rating: '7.7',
      year: '2022',
      duration: '114 min'),
  Movie(
      id: 'tt1187043',
      title: 'Sonic the Hedgehog 2',
      imageUrl:
          'https://m.media-amazon.com/images/M/MV5BMzExMWVjODMtYjgzOC00ZDljLTgxMTktYWQ0NGNiOTcxNGYxXkEyXkFqcGdeQXVyMDM2NDM2MQ@@._V1_.jpg',
      description:
          'When the manic Dr Robotnik returns to Earth with a new ally, Knuckles the Echidna, Sonic and his new friend Tails is all that stands in their way.',
      rating: '7',
      year: '2022',
      duration: '122 min'),
  Movie(
      id: 'tt1049413',
      title: 'X',
      imageUrl:
          'https://cdn.celpox.com/bby_uploads/media/aab829e4a6cea497b7d1347950100d16.jpg',
      description:
          'In 1979, a group of young filmmakers set out to make an adult film in rural Texas, but when their reclusive, elderly hosts catch them in the act, the cast find themselves fighting for their lives.',
      rating: '7',
      year: '2022',
      duration: '105 min'),
];

final bestMovieList = [
  Movie(
      id: 'tt0437086',
      title: 'Fantastic Beasts: The Secrets of Dumbledore',
      imageUrl:
          'https://images.indianexpress.com/2022/04/Fantastic-Beasts-Secrets-of-Dumbledore-review.jpg',
      description:
          'Albus Dumbledore assigns Newt and his allies with a mission related to the rising power of Grindelwald.',
      rating: '6.7',
      year: '2022',
      duration: '142 min'),
  Movie(
      id: 'tt6320628',
      title: 'Everything Everywhere All at Once',
      imageUrl:
          'https://m.media-amazon.com/images/M/MV5BYTc4YjIzYWYtMjAxZC00Y2NiLTliYTctZjE0ZjVhZWE2ZDY1XkEyXkFqcGdeQWRvb2xpbmhk._V1_.jpg',
      description:
          'An aging Chinese immigrant is swept up in an insane adventure, where she alone can save the world by exploring other universes connecting with the lives she could have led.',
      rating: '8.9',
      year: '2022',
      duration: '139 min'),
  Movie(
      id: 'tt1979376',
      title: 'Fresh',
      imageUrl:
          'https://m.media-amazon.com/images/M/MV5BZTgxMGQ2ZDctYWY4Yy00YTI4LWIxMmYtOWViMGI5ZDIwMmFiXkEyXkFqcGdeQXVyMTAyMjQ3NzQ1._V1_FMjpg_UX1000_.jpg',
      description:
          'The horrors of modern dating seen through one young woman\'s defiant battle to survive her new boyfriend\'s unusual appetites.',
      rating: '6.7',
      year: '2022',
      duration: '114 min'),
];
