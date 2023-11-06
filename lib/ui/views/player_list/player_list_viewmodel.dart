import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tactical_e_clipboard/app/app.locator.dart';
import 'package:tactical_e_clipboard/app/app.router.dart';
import 'package:tactical_e_clipboard/model/player_model.dart';
import 'package:tactical_e_clipboard/services/player_service.dart';

class PlayerListViewModel extends FutureViewModel {
  final PlayerService _playerService = locator<PlayerService>();
  final _navigationService = locator<NavigationService>();

  List<PlayerModel> players = [];

  @override
  Future futureToRun() async {
    populate();
  }

  void populate() {
    _playerService.getAll().then((value) {
      players = value;
      rebuildUi();
    });
  }

  void editPlayer(int index) async {
    await _navigationService.navigateToPlayerDetailView(
      playerModel: players.elementAt(index),
    );
    await futureToRun();
  }

  void deletePlayer(int index, BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext ctx) {
          return AlertDialog(
            title: const Text('Please Confirm'),
            content: const Text('Are you sure to delete the Player?'),
            actions: [
              // The "Yes" button
              TextButton(
                  onPressed: () {
                    _playerService
                        .delete(players.elementAt(index).idPlayer!)
                        .then((_) {
                      players.removeAt(index);
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text('Deleted Successfully!'),
                        showCloseIcon: true,
                        backgroundColor: Color(0xFF00C853),
                      ));
                      rebuildUi();
                    });
                    Navigator.of(context).pop();
                  },
                  child: const Text('Yes')),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('No'))
            ],
          );
        });
  }

  Future<void> addPlayer() async {
    await _navigationService.navigateToPlayerDetailView(
      playerModel: null,
    );
    await futureToRun();
  }
}
