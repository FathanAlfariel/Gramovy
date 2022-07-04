import 'package:flutter/material.dart';

class Library extends StatefulWidget {
  const Library({Key? key}) : super(key: key);

  @override
  _LibraryState createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: getBody(),
    ));
  }

  Widget getBody() {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
      child: ListView(
        children: const [
          Text(
            'Library',
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Divider(
            thickness: 2,
            color: Colors.black,
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            leading: Icon(
              Icons.music_note,
              color: Colors.black,
            ),
            title: Text(
              'Now Playing',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.history,
              color: Colors.black,
            ),
            title: Text(
              'History',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.favorite,
              color: Colors.black,
            ),
            title: Text(
              'Favorite',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.my_library_music,
              color: Colors.black,
            ),
            title: Text(
              'My Music',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.download,
              color: Colors.black,
            ),
            title: Text(
              'Downloads',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.playlist_play,
              color: Colors.black,
            ),
            title: Text(
              'Playlist',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
