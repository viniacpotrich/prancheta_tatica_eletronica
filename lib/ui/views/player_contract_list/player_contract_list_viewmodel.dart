import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tactical_e_clipboard/app/app.locator.dart';
import 'package:tactical_e_clipboard/app/app.router.dart';
import 'package:tactical_e_clipboard/model/palyer_contract_model.dart';
import 'package:tactical_e_clipboard/services/player_contract_service.dart';

import '../../common/app_strings.dart';

class PlayerContractListViewModel extends FutureViewModel {
  final _navigationService = locator<NavigationService>();
  final _playerContractService = locator<PlayerContractService>();

  List<PlayerContractModel> playerContracts = [];

  @override
  Future futureToRun() async {
    populate();
  }

  void populate() {
    _playerContractService.getAll().then((value) {
      playerContracts = value;
      rebuildUi();
    });
  }

  Future<void> addPlayerContract() async {
    await _navigationService.navigateToPlayerContractDetailView(
      playerContractModel: null,
    );
    await futureToRun();
  }

  Future<void> editPlayerContract(int index) async {
    await _navigationService.navigateToPlayerContractDetailView(
      playerContractModel: playerContracts.elementAt(index),
    );
    await futureToRun();
  }

  void deletePlayerContract(int index, context) {
    showDialog(
        context: context,
        builder: (BuildContext ctx) {
          return AlertDialog(
            title: const Text(pleaseConfirm),
            content: const Text(deletePlayerConfirmation),
            actions: [
              TextButton(
                  onPressed: () {
                    _playerContractService
                        .delete(
                            playerContracts.elementAt(index).idPlayerContract!)
                        .then((_) {
                      playerContracts.removeAt(index);

                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text(deletedSuccessfully),
                        showCloseIcon: true,
                        backgroundColor: Color(0xFF00C853),
                      ));
                      rebuildUi();
                    });
                    Navigator.of(context).pop();
                  },
                  child: const Text(yes)),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text(no))
            ],
          );
        });
  }
}
