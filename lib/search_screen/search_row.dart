// import 'package:flutter/material.dart';

// class SearchScreen extends StatefulWidget {
//   @override
//   _SearchScreenState createState() => _SearchScreenState();
// }

// class _SearchScreenState extends State<SearchScreen> {
//   final TextEditingController _searchController = TextEditingController();

//   // Placeholder for API results
//   List<Map<String, String>> movies = [];
//   bool isLoading = false;

//   void _searchMovies(String query) async {
//     setState(() {
//       isLoading = true;
//     });

//     // Simulating API call (Replace this with your actual API call logic)
//     await Future.delayed(Duration(seconds: 2)); // Simulating network delay
//     if (query.isNotEmpty) {
//       // Example result (Replace with API response)
//       movies = [
//         {
//           'title': 'Alita Battle Angel',
//           'year': '2019',
//           'actors': 'Rosa Salazar, Christoph Waltz',
//         },
//       ];
//     } else {
//       movies = [];
//     }

//     setState(() {
//       isLoading = false;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: TextField(
//               controller: _searchController,
//               decoration: InputDecoration(
//                 hintText: 'Search',
//                 prefixIcon: Icon(Icons.search, color: Colors.grey),
//                 filled: true,
//                 fillColor: Colors.grey.withOpacity(0.3),
//                 enabledBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(32.0),
//                   borderSide: BorderSide(color: Colors.grey, width: 1),
//                 ),
//                 focusedBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(32.0),
//                   borderSide: BorderSide(color: Colors.grey, width: 2),
//                 ),
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(32.0),
//                   borderSide: BorderSide.none,
//                 ),
//               ),
//               style: TextStyle(color: Colors.white),
//               onChanged: _searchMovies,
//             ),
//           ),
//           Expanded(
//             child: isLoading
//                 ? Center(
//                     child: CircularProgressIndicator(),
//                   )
//                 : movies.isEmpty
//                     ? Center(
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Icon(
//                               Icons.movie_creation_outlined,
//                               size: 100,
//                               color: Colors.grey,
//                             ),
//                             SizedBox(height: 16),
//                             Text(
//                               'No movies found',
//                               style:
//                                   TextStyle(fontSize: 18, color: Colors.grey),
//                             ),
//                           ],
//                         ),
//                       )
//                     : ListView.builder(
//                         itemCount: movies.length,
//                         itemBuilder: (context, index) {
//                           final movie = movies[index];
//                           return Padding(
//                             padding: const EdgeInsets.symmetric(
//                                 horizontal: 16.0, vertical: 8.0),
//                             child: Row(
//                               children: [
//                                 Container(
//                                   width: 80,
//                                   height: 120,
//                                   color: Colors.grey, // Placeholder for image
//                                 ),
//                                 SizedBox(width: 16),
//                                 Expanded(
//                                   child: Column(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       Text(
//                                         movie['title']!,
//                                         style: TextStyle(
//                                           fontSize: 18,
//                                           fontWeight: FontWeight.bold,
//                                           color: Colors.white,
//                                         ),
//                                       ),
//                                       SizedBox(height: 8),
//                                       Text(
//                                         movie['year']!,
//                                         style: TextStyle(
//                                           fontSize: 14,
//                                           color: Colors.grey,
//                                         ),
//                                       ),
//                                       SizedBox(height: 8),
//                                       Text(
//                                         movie['actors']!,
//                                         style: TextStyle(
//                                           fontSize: 14,
//                                           color: Colors.grey,
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           );
//                         },
//                       ),
//           ),
//         ],
//       ),
//       backgroundColor: Colors.black, // Match the dark background
//     );
//   }
// }
