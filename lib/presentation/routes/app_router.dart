import 'package:bccp/domain/models/arguments/lead_detail_arguments.dart';
import 'package:bccp/presentation/screens/create_new_lead/create_lead_cubit.dart';
import 'package:bccp/presentation/screens/create_new_lead/create_lead_screen.dart';
import 'package:bccp/presentation/screens/lead_detail/lead_detail_cubit.dart';
import 'package:bccp/presentation/screens/lead_detail/lead_detail_screen.dart';
import 'package:bccp/presentation/screens/login/login_cubit.dart';
import 'package:bccp/presentation/screens/reset_password/reset_password_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:bccp/domain/models/arguments/home_tab_arguments.dart';
import 'package:bccp/presentation/screens/account/account_screen.dart';
import 'package:bccp/presentation/screens/extend/extend_screen.dart';
import 'package:bccp/presentation/screens/home/home_screen.dart';
import 'package:bccp/presentation/screens/lead/lead_screen.dart';
import 'package:bccp/presentation/screens/opportunity/opportunity_screen.dart';
import 'package:bccp/presentation/routes/route_name.dart';
import 'package:bccp/presentation/screens/forgot_password/forgot_password_screen.dart';
import '../screens/home_tab/home_tab_screen.dart';
import '../screens/login/login_screen.dart';
import '../screens/splash/splash_cubit.dart';
import '../screens/splash/splash_screen.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings routeSettings) {
    Widget initialWidget = BlocProvider(
      create: (context) => SplashCubit(),
      child: const SplashScreen(),
    );

    Widget routeWidget = initialWidget;
    final arguments = routeSettings.arguments;

    switch (routeSettings.name) {
      case RouteName.homeTab:
        routeWidget = HomeTabScreen(arguments: arguments as HomeTabArguments);
        break;
      case RouteName.home:
        routeWidget = const HomeScreen();
        break;
      case RouteName.lead:
        routeWidget = const LeadScreen();
        break;
      case RouteName.opportunity:
        routeWidget = const OpportunityScreen();
        break;
      case RouteName.extend:
        routeWidget = const ExtendScreen();
        break;
      case RouteName.account:
        routeWidget = const AccountScreen();
        break;
      case RouteName.login:
        routeWidget = BlocProvider(
          create: (context) => LoginCubit(),
          child: const LoginScreen(),
        );
        break;
      case RouteName.forgotPassword:
        routeWidget = const ForgotPasswordScreen();
        break;
      case RouteName.resetPassword:
        routeWidget = const ResetPasswordScreen();
        break;
      case RouteName.createLead:
        routeWidget = BlocProvider(
          create: (context) => CreateLeadCubit(),
          child: const CreateLeadScreen(),
        );
        break;
      case RouteName.leadDetail:
        routeWidget = BlocProvider(
          create: (context) => LeadDetailCubit(),
          child: LeadDetailScreen(arguments: arguments as LeadDetailArguments),
        );
        break;
      default:
        routeWidget = initialWidget;
        break;
    }

    return MaterialPageRoute(
        builder: (_) => routeWidget, settings: routeSettings);
  }
}
