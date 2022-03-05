import 'package:flutter/material.dart';
import 'package:flutter_design_whatsapp/models/models.dart';
import 'package:flutter_design_whatsapp/providers/providers.dart';

class ListChatsProvider extends ChangeNotifier {
  bool isLoading = false;

  Future<void> requestChats(BuildContext context) async {
    isLoading = true;
    notifyListeners();
    String data = await DefaultAssetBundle.of(context)
        .loadString("assets/data_messages.json");
    //final jsonResult = jsonDecode(data);
    final response = Response.fromJson(data);
    DataList.listContacts = response.data;
    isLoading = false;
    notifyListeners();
  }
}
