import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jaho_coding_challenge/features/home/bloc/user_bloc.dart';
import 'package:jaho_coding_challenge/features/home/ui/widgets/cache_image.dart';
import 'package:jaho_coding_challenge/injector/injector.dart';

enum ViewType { grid, list }

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final userBloc = getIt<UserBloc>();
        userBloc.add(const UserLoad());
        return userBloc;
      },
      child: const HomeView(),
    );
  }
}

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late final ScrollController _scrollController;

  ViewType _viewType = ViewType.grid;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()..addListener(_onScroll);
  }

  void _onScroll() {
    if (!_scrollController.hasClients) return;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.position.pixels;
    if (currentScroll == maxScroll) {
      context.read<UserBloc>().add(
            const UserLoad(),
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jaho Coding Challenge'),
        actions: [
          IconButton(
            icon: Icon(
                _viewType == ViewType.list ? Icons.grid_on : Icons.view_list),
            onPressed: () {
              if (_viewType == ViewType.list) {
                _viewType = ViewType.grid;
              } else {
                _viewType = ViewType.list;
              }
              setState(() {});
            },
          )
        ],
      ),
      body: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          if (state.status == UIStatus.initial) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state.status == UIStatus.loadSuccess) {
            var users = state.users;

            return RefreshIndicator(
              onRefresh: () async {
                context.read<UserBloc>().add(
                      const UserRefresh(),
                    );
              },
              child: CustomScrollView(
                controller: _scrollController,
                slivers: [
                  if (_viewType == ViewType.grid) ...[
                    SliverGrid(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisSpacing: 5,
                        mainAxisSpacing: 100,
                        crossAxisCount: 2,
                        childAspectRatio: 1,
                      ),
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          return buildUserGridTile(context, state, index);
                        },
                        childCount: users.length,
                        addAutomaticKeepAlives: true,
                        addRepaintBoundaries: true,
                        addSemanticIndexes: true,
                      ),
                    ),
                  ] else ...[
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          return buildUserListView(context, state, index);
                        },
                        childCount: users.length,
                        addAutomaticKeepAlives: true,
                        addRepaintBoundaries: true,
                        addSemanticIndexes: true,
                      ),
                    ),
                  ],
                  if (!state.hasReachedMax)
                    const SliverToBoxAdapter(
                      child: SizedBox(
                          height: 40,
                          width: 40,
                          child: Center(child: CircularProgressIndicator())),
                    ),
                ],
              ),
            );
          } else {
            return const Center(
              child: Text(
                'Something wrong!!!',
              ),
            );
          }
        },
      ),
    );
  }

  Widget buildUserListView(
    BuildContext context,
    UserState state,
    int index,
  ) {
    final user = state.users[index];
    final firstName = user.firstName ?? '';
    final lastName = user.lastName ?? '';
    final avatarUrl = user.avatar ?? '';
    return SizedBox(
      height: 150,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            children: [
              CirleAvatar(avatarUrl: avatarUrl),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 40, left: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '$firstName $lastName',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 19,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(state.users[index].email ?? ''),
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

  Widget buildUserGridTile(
    BuildContext context,
    UserState state,
    int index,
  ) {
    final user = state.users[index];
    final firstName = user.firstName ?? '';
    final lastName = user.lastName ?? '';
    final avatarUrl = user.avatar ?? '';
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CirleAvatar(avatarUrl: avatarUrl),
        Text(
          '$firstName $lastName',
          style: const TextStyle(fontSize: 15),
        ),
        Text(state.users[index].email ?? ''),
        const SizedBox(
          height: 5,
        )
      ],
    );
  }
}
