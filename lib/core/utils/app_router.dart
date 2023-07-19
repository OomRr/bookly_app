import 'package:bookly_app/Features/home/presentation/views/book_details_view.dart';
import 'package:go_router/go_router.dart';
import '../../Features/Splash/presentation/views/splash_view.dart';
import '../../Features/home/presentation/views/home_view.dart';
abstract class AppRouter
{
  static final router=GoRouter(
      routes: [
        GoRoute(
          path: '/',
          builder: (context,state)=>const Splashview(),
        ),
        GoRoute(
          path: '/homeView',
          builder: (context,state)=>const HomeView(),
        ),
        GoRoute(
          path: '/bookDetailsView',
          builder: (context,state)=>const BookDetailsView(),
        ),
      ],
  );
}