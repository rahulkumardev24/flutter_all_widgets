import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_all_concept/youtube/playlist_videos_screen.dart';
import 'package:flutter_all_concept/youtube/video_player_screen.dart';
import 'package:http/http.dart' as http;

class YouTubeChannelScreen extends StatefulWidget {
  @override
  _YouTubeChannelScreenState createState() => _YouTubeChannelScreenState();
}

class _YouTubeChannelScreenState extends State<YouTubeChannelScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  List<dynamic> videos = [];
  List<dynamic> playlists = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    fetchChannelData();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Future<void> fetchChannelData() async {
    try {
      final String apiKey = 'AIzaSyCQFcm4XqmlCN9sUrn4KXyZgguNEj66Lyk';
      final String channelId = 'UCbeB0hHWr6zWHycC5MOCLJw';

      // Fetch videos
      final videosResponse = await http.get(Uri.parse(
          'https://www.googleapis.com/youtube/v3/search?key=$apiKey&channelId=$channelId&part=snippet,id&order=date&maxResults=20&type=video'));

      // Fetch playlists
      final playlistsResponse = await http.get(Uri.parse(
          'https://www.googleapis.com/youtube/v3/playlists?key=$apiKey&channelId=$channelId&part=snippet&maxResults=20'));

      if (videosResponse.statusCode == 200 &&
          playlistsResponse.statusCode == 200) {
        setState(() {
          videos = json.decode(videosResponse.body)['items'];
          playlists = json.decode(playlistsResponse.body)['items'];
          isLoading = false;
        });
      }
    } catch (e) {
      setState(() {
        isLoading = false;
      });
      print('Error fetching data: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Creator Rahul'),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(icon: Icon(Icons.video_library), text: 'Videos'),
            Tab(icon: Icon(Icons.playlist_play), text: 'Playlists'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          // Videos Tab
          isLoading
              ? Center(child: CircularProgressIndicator())
              : RefreshIndicator(
                  onRefresh: fetchChannelData,
                  child: ListView.builder(
                    itemCount: videos.length,
                    itemBuilder: (context, index) {
                      final video = videos[index];
                      return Card(
                        margin:
                            EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                        child: ListTile(
                          leading: Image.network(
                            video['snippet']['thumbnails']['default']['url'],
                            width: 100,
                            fit: BoxFit.cover,
                          ),
                          title: Text(video['snippet']['title']),
                          subtitle: Text(
                            video['snippet']['publishedAt']
                                .toString()
                                .substring(0, 10),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => VideoPlayerScreen(
                                  videoId: video['id']['videoId'],
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

          // Playlists Tab
          isLoading
              ? Center(child: CircularProgressIndicator())
              : RefreshIndicator(
                  onRefresh: fetchChannelData,
                  child: ListView.builder(
                    itemCount: playlists.length,
                    itemBuilder: (context, index) {
                      final playlist = playlists[index];
                      return Card(
                        margin:
                            EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                        child: ListTile(
                          leading: Image.network(
                            playlist['snippet']['thumbnails']['default']['url'],
                            width: 100,
                            fit: BoxFit.cover,
                          ),
                          title: Text(playlist['snippet']['title']),
                          subtitle: Text(
                            '${playlist['snippet']['itemCount'] ?? '?'} videos',
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PlaylistVideosScreen(
                                  playlistId: playlist['id'],
                                  playlistTitle: playlist['snippet']['title'],
                                ),
                              ),
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => VideoPlayerScreen(
                videoId: 'rNYXC47tpp8',
                videoTitle: 'Featured Video',
              ),
            ),
          );
        },
        icon: Icon(Icons.play_arrow),
        label: Text('Play Featured'),
        backgroundColor: Colors.red,
      ),
    );
  }
}
