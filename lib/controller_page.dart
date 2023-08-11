import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:delvee/main_page.dart';
import 'package:flutter/material.dart';

import 'no_internet_page.dart';

class ControllerPage extends StatelessWidget {
  const ControllerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Connectivity().checkConnectivity(),
      builder: (context, state) {
        return StreamBuilder(
          initialData: state.data,
          stream: Connectivity().onConnectivityChanged,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return 
                snapshot.data == ConnectivityResult.mobile || 
                snapshot.data == ConnectivityResult.wifi ? 
                  const MainPage() : 
                  const NoInternetPage();
            }
            else {
              return const NoInternetPage();
            }
          }
        );
      }
    );
  }
}