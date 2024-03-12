import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Votaciones',
      home: VotingScreen(),
    );
  }
}

class VotingScreen extends StatefulWidget {
  @override
  _VotingScreenState createState() => _VotingScreenState();
}

class _VotingScreenState extends State<VotingScreen> {
  int alexanderVotes = 0;
  int johanAVotes = 0;
  int brandonVotes = 0;

  void _voteForCandidate(int candidateNumber) {
    setState(() {
      if (candidateNumber == 1) {
        alexanderVotes++;
      } else if (candidateNumber == 2) {
        johanAVotes++;
      } else {
        brandonVotes++;
      }
    });
  }

  String _calculatePercentage(int votes, int totalVotes) {
    double percentage = (votes / totalVotes) * 100;
    return percentage.toStringAsFixed(2) + '%';
  }

  int _getTotalVotes() {
    return alexanderVotes + johanAVotes + brandonVotes;
  }

  String _getWinner() {
    if (alexanderVotes > johanAVotes && alexanderVotes > brandonVotes) {
      return 'Alexander';
    } else if (johanAVotes > alexanderVotes && johanAVotes > brandonVotes) {
      return 'Johan A';
    } else if (brandonVotes > alexanderVotes && brandonVotes > johanAVotes) {
      return 'Brandon';
    } else {
      return 'Empate';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Total de votos: ${_getTotalVotes()}',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset("icon.png"),
                _buildCandidateContainer('ALEXANDER', alexanderVotes),
                Image.asset("icon.png"),
                _buildCandidateContainer('JOHAN', johanAVotes),
                 Image.asset("icon.png"),
                _buildCandidateContainer('BRANDON', brandonVotes),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => _voteForCandidate(1),
                  child: Text('VOTA POR ALEXANDER'),
                ),
                ElevatedButton(
                  onPressed: () => _voteForCandidate(2),
                  child: Text('VOTA POR JOAN'),
                ),
                ElevatedButton(
                  onPressed: () => _voteForCandidate(3),
                  child: Text('VOTA POR BRANDO'),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Ganador: ${_getWinner()}',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCandidateContainer(String candidateName, int votes) {
    String percentage = _getTotalVotes() == 0 ? '0.00%' : _calculatePercentage(votes, _getTotalVotes());

    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 17, 17, 17),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Text(
            candidateName,
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
          SizedBox(height: 5),
          Text(
            'Votos: $votes',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
          SizedBox(height: 5),
          Text(
            'Porcentaje: $percentage',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
        ],
      ),
    );
  }
}