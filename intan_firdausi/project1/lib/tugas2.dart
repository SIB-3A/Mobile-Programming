import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const BringMeToLifeApp());
}

class BringMeToLifeApp extends StatelessWidget {
  const BringMeToLifeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bring Me To Life',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto',
        useMaterial3: true,
      ),
      darkTheme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
        primaryColor: Colors.blue.shade800,
      ),
      home: const BringMeToLifePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class BringMeToLifePage extends StatefulWidget {
  const BringMeToLifePage({super.key});

  @override
  State<BringMeToLifePage> createState() => _BringMeToLifePageState();
}

class _BringMeToLifePageState extends State<BringMeToLifePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _pulseAnimation;
  late Animation<Color?> _colorAnimation;

  final AudioPlayer _audioPlayer = AudioPlayer();
  PlayerState _playerState = PlayerState.stopped;
  bool _isPlaying = false;
  double _volume = 0.5;
  bool _audioLoaded = false;

  final Song song = Song(
    title: "BRING ME TO LIFE",
    artist: "Evanescence",
    writer: "Amy Lee • Ben Moody • David Hodges",
    album: "Fallen (2003)",
    lyrics: """How can you see into my eyes like open doors?
Leading you down into my core
Where I've become so numb
Without a soul, my spirit sleeping somewhere cold
Until you find it there and lead it back home

(Wake me up)
Wake me up inside
(I can't wake up)
Wake me up inside
(Save me)
Call my name and save me from the dark
(Wake me up)
Bid my blood to run
(I can't wake up)
Before I come undone
(Save me)
Save me from the nothing I've become

Now that I know what I'm without
You can't just leave me
Breathe into me and make me real
Bring me to life

(Wake me up)
Wake me up inside
(I can't wake up)
Wake me up inside
(Save me)
Call my name and save me from the dark
(Wake me up)
Bid my blood to run
(I can't wake up)
Before I come undone
(Save me)
Save me from the nothing I've become

Bring me to life
(I've been living a lie, there's nothing inside)
Bring me to life

Frozen inside without your touch
Without your love, darling
Only you are the life among the dead

All this time I can't believe I couldn't see
Kept in the dark, but you were there in front of me
I've been sleeping a thousand years it seems
Got to open my eyes to everything

Without a thought, without a voice, without a soul
Don't let me die here
There must be something more
Bring me to life

(Wake me up)
Wake me up inside
(I can't wake up)
Wake me up inside
(Save me)
Call my name and save me from the dark
(Wake me up)
Bid my blood to run
(I can't wake up)
Before I come undone
(Save me)
Save me from the nothing I've become

Bring me to life
(I've been living a lie, there's nothing inside)
Bring me to life""",
    albumCover: "🎭",
    color: Colors.blue.shade800,
    duration: "3:56",
  );

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    )..repeat(reverse: true);

    _pulseAnimation = Tween<double>(begin: 0.95, end: 1.05).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    _colorAnimation = ColorTween(
      begin: Colors.blue.shade800,
      end: Colors.purple.shade700,
    ).animate(_controller);

    _setupAudioPlayer();
    _checkAudioFile();
  }

  void _setupAudioPlayer() {
    _audioPlayer.onPlayerStateChanged.listen((PlayerState state) {
      setState(() {
        _playerState = state;
        _isPlaying = state == PlayerState.playing;
      });
    });
  }

  // Cek apakah file audio ada
  Future<void> _checkAudioFile() async {
    try {
      // Coba load audio file untuk mengecek ketersediaan
      await _audioPlayer.setSource(AssetSource('audio/bring_me_to_life.mp3'));
      setState(() {
        _audioLoaded = true;
      });
      print('Audio file loaded successfully');
    } catch (e) {
      print('Audio file not found: $e');
      setState(() {
        _audioLoaded = false;
      });
    }
  }

  Future<void> _playAudio() async {
    try {
      if (_playerState == PlayerState.playing) {
        await _audioPlayer.pause();
      } else {
        if (_audioLoaded) {
          // Gunakan source yang sudah diset
          await _audioPlayer.resume();
        } else {
          // Coba set source dulu
          await _audioPlayer.play(
            AssetSource('audio/bring_me_to_life.mp3'),
            volume: _volume,
          );
          setState(() {
            _audioLoaded = true;
          });
        }
      }
    } catch (e) {
      print('Error playing audio: $e');
      _showDemoMessage();
    }
  }

  void _showDemoMessage() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Audio file not found. Please:'),
            const Text('1. Create folder: assets/audio/'),
            const Text('2. Add bring_me_to_life.mp3 to the folder'),
            const Text('3. Run: flutter pub get'),
          ],
        ),
        backgroundColor: Colors.red.shade800,
        duration: const Duration(seconds: 5),
        action: SnackBarAction(
          label: 'UNDERSTAND',
          textColor: Colors.white,
          onPressed: () {},
        ),
      ),
    );
  }

  void _setVolume(double value) {
    setState(() {
      _volume = value;
    });
    _audioPlayer.setVolume(value);
  }

  @override
  void dispose() {
    _controller.dispose();
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.grey.shade900,
                Colors.black,
                Colors.blue.shade900.withOpacity(0.3),
              ],
            ),
          ),
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 200,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  title: Text(
                    'EVANESCENCE',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          blurRadius: 10,
                          color: Colors.blue.shade400,
                        ),
                      ],
                    ),
                  ),
                  background: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.blue.shade900.withOpacity(0.8),
                          Colors.purple.shade800.withOpacity(0.6),
                          Colors.black.withOpacity(0.9),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.music_note,
                        size: 80,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                backgroundColor: Colors.transparent,
                elevation: 0,
                actions: [
                  IconButton(
                    icon: Icon(
                      _audioLoaded ? Icons.audio_file : Icons.error,
                      color: _audioLoaded ? Colors.green : Colors.red,
                    ),
                    onPressed: _checkAudioFile,
                    tooltip: _audioLoaded ? 'Audio Ready' : 'Audio Missing',
                  ),
                ],
              ),

              SliverToBoxAdapter(
                child: AnimatedBuilder(
                  animation: _controller,
                  builder: (context, child) {
                    return Transform.scale(
                      scale: _pulseAnimation.value,
                      child: Container(
                        margin: const EdgeInsets.all(20),
                        padding: const EdgeInsets.all(30),
                        decoration: BoxDecoration(
                          color: _colorAnimation.value?.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: _colorAnimation.value ?? Colors.blue,
                            width: 2,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: (_colorAnimation.value ?? Colors.blue)
                                  .withOpacity(0.3),
                              blurRadius: 20,
                              spreadRadius: 5,
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                Text(
                                  song.albumCover,
                                  style: const TextStyle(fontSize: 60),
                                ),
                                if (!_audioLoaded)
                                  Positioned(
                                    top: 0,
                                    right: 0,
                                    child: Container(
                                      padding: const EdgeInsets.all(4),
                                      decoration: const BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      ),
                                      child: const Icon(
                                        Icons.warning,
                                        color: Colors.white,
                                        size: 16,
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            Text(
                              song.title,
                              style: const TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.w900,
                                color: Colors.white,
                                letterSpacing: 2,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 10),
                            Text(
                              song.artist,
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey.shade400,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              song.album,
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey.shade500,
                              ),
                            ),

                            // Audio Status Indicator
                            Container(
                              margin: const EdgeInsets.symmetric(vertical: 10),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 5),
                              decoration: BoxDecoration(
                                color: _audioLoaded
                                    ? Colors.green.shade800
                                    : Colors.red.shade800,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text(
                                _audioLoaded
                                    ? 'READY TO PLAY'
                                    : 'AUDIO FILE MISSING',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),

                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  icon: const Icon(Icons.skip_previous),
                                  color: Colors.white,
                                  iconSize: 30,
                                  onPressed: () {},
                                ),
                                const SizedBox(width: 20),
                                GestureDetector(
                                  onTap: _audioLoaded
                                      ? _playAudio
                                      : _showDemoMessage,
                                  child: Container(
                                    padding: const EdgeInsets.all(20),
                                    decoration: BoxDecoration(
                                      color: _isPlaying
                                          ? Colors.red.shade800
                                          : (_audioLoaded
                                              ? Colors.blue.shade800
                                              : Colors.grey),
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                          color: (_isPlaying
                                                  ? Colors.red
                                                  : (_audioLoaded
                                                      ? Colors.blue
                                                      : Colors.grey))
                                              .withOpacity(0.5),
                                          blurRadius: 10,
                                          spreadRadius: 2,
                                        ),
                                      ],
                                    ),
                                    child: Icon(
                                      _isPlaying
                                          ? Icons.pause
                                          : Icons.play_arrow,
                                      color: Colors.white,
                                      size: 40,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 20),
                                IconButton(
                                  icon: const Icon(Icons.skip_next),
                                  color: Colors.white,
                                  iconSize: 30,
                                  onPressed: () {},
                                ),
                              ],
                            ),

                            const SizedBox(height: 20),
                            Row(
                              children: [
                                Icon(Icons.volume_down,
                                    color: Colors.grey.shade400),
                                Expanded(
                                  child: Slider(
                                    value: _volume,
                                    onChanged: _audioLoaded ? _setVolume : null,
                                    min: 0.0,
                                    max: 1.0,
                                    activeColor: _audioLoaded
                                        ? Colors.blue.shade400
                                        : Colors.grey,
                                    inactiveColor: Colors.grey.shade600,
                                  ),
                                ),
                                Icon(Icons.volume_up,
                                    color: Colors.grey.shade400),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),

              // ... (bagian lainnya tetap sama)
              SliverToBoxAdapter(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                        color: Colors.blue.shade800.withOpacity(0.3)),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Song Information',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue.shade400,
                        ),
                      ),
                      const SizedBox(height: 10),
                      _buildInfoRow('Artist', song.artist),
                      _buildInfoRow('Album', song.album),
                      _buildInfoRow('Writers', song.writer),
                      _buildInfoRow('Duration', song.duration),
                      _buildInfoRow('Audio Status',
                          _audioLoaded ? 'Ready' : 'File Missing'),
                    ],
                  ),
                ),
              ),

              SliverToBoxAdapter(
                child: Container(
                  margin: const EdgeInsets.all(20),
                  padding: const EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                        color: Colors.purple.shade800.withOpacity(0.2)),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'LYRICS',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w900,
                          color: Colors.blue.shade400,
                          letterSpacing: 3,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        song.lyrics,
                        style: const TextStyle(
                          fontSize: 16,
                          height: 1.6,
                          color: Colors.white70,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          Text(
            '$label: ',
            style: TextStyle(
              color: Colors.grey.shade400,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: TextStyle(
                color: value == 'File Missing'
                    ? Colors.red.shade400
                    : Colors.white70,
                fontWeight: value == 'File Missing'
                    ? FontWeight.bold
                    : FontWeight.normal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Song {
  final String title;
  final String artist;
  final String writer;
  final String album;
  final String lyrics;
  final String albumCover;
  final Color color;
  final String duration;

  Song({
    required this.title,
    required this.artist,
    required this.writer,
    required this.album,
    required this.lyrics,
    required this.albumCover,
    required this.color,
    required this.duration,
  });
}
