import 'package:admin_dashboard/providers/auth_provider.dart';
import 'package:admin_dashboard/ui/views/dashboard_view.dart';
import 'package:admin_dashboard/ui/views/login_view.dart';
import 'package:fluro/fluro.dart';
import 'package:provider/provider.dart';

class DashboardHandlers {
  static Handler dashboard = Handler(
    
    handlerFunc: (context, parameters) {
      final authProvider = Provider.of<AuthProvider>(context!);
      
      if (authProvider.authStatus == AuthStatus.authenticated) {
        return const DashboardView();
      } else {
        return const LoginView();
      }
    },
  );
}
