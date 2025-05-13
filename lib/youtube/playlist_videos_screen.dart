import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_all_concept/youtube/video_player_screen.dart';
import 'package:http/http.dart' as http;

class PlaylistVideosScreen extends StatefulWidget {
  final String playlistId;
  final String playlistTitle;

  PlaylistVideosScreen({required this.playlistId, required this.playlistTitle});

  @override
  _PlaylistVideosScreenState createState() => _PlaylistVideosScreenState();
}

class _PlaylistVideosScreenState extends State<PlaylistVideosScreen> {
  List<dynamic> playlistVideos = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchPlaylistVideos();
  }

  Future<void> fetchPlaylistVideos() async {
    try {
      final String apiKey = 'AIzaSyCQFcm4XqmlCN9sUrn4KXyZgguNEj66Lyk';

      final response = await http.get(Uri.parse(
          'https://www.googleapis.com/youtube/v3/playlistItems?key=$apiKey&playlistId=${widget.playlistId}&part=snippet&maxResults=50'));

      if (response.statusCode == 200) {
        setState(() {
          playlistVideos = json.decode(response.body)['items'];
          isLoading = false;
        });
      }
    } catch (e) {
      setState(() {
        isLoading = false;
      });
      print('Error fetching playlist videos: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.playlistTitle),
      ),
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : RefreshIndicator(
        onRefresh: fetchPlaylistVideos,
        child: ListView.builder(
          itemCount: playlistVideos.length,
          itemBuilder: (context, index) {
            final video = playlistVideos[index];
            return Card(
              margin: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
              child: ListTile(
                leading: Image.network(
                  video['snippet']['thumbnails']['default']['url'],
                  width: 100,
                  fit: BoxFit.cover,
                ),
                title: Text(video['snippet']['title']),
                subtitle: Text(
                  video['snippet']['publishedAt'].toString().substring(0, 10),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => VideoPlayerScreen(
                        videoId: video['snippet']['resourceId']['videoId'],
                        videoTitle: video['snippet']['title'],
                      ),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}