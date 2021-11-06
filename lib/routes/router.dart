import 'package:auto_route/auto_route.dart';
import 'package:bottom_navigation_test/home_page.dart';
import 'package:bottom_navigation_test/posts/posts_page.dart';
import 'package:bottom_navigation_test/posts/single_post_page.dart';
import 'package:bottom_navigation_test/settings/settings_page.dart';
import 'package:bottom_navigation_test/users/user_profile_page.dart';
import 'package:bottom_navigation_test/users/users_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(
      path: '/',
      page: HomePage,
      children: [
        AutoRoute(
          path: 'posts',
          name: "PostsRouter",
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: '',
              page: PostsPage,
            ),
            AutoRoute(
              path: ':postId',
              page: SinglePostPage,
            )
          ],
        ),
        AutoRoute(
          path: 'users',
          name: "UsersRouter",
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: '',
              page: UsersPage,
            ),
            AutoRoute(
              path: ':userId',
              page: UserProfilePage,
            )
          ],
        ),
        AutoRoute(
          path: 'settings',
          name: 'SettingsPage',
          page: SettingsPage,
        ),
      ],
    ),
  ],
)
class $AppRouter {}
