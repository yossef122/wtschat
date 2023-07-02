import 'package:chatapp/Features/Home_App/Presentation/View/Widget/HomeChatDetails.dart';
import 'package:chatapp/Features/Home_App/Presentation/View_model/ChatUsers/chat_users_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListViewOfHomeChat extends StatelessWidget {
  const ListViewOfHomeChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChatUsersCubit, ChatUsersState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: ListView.separated(
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  height: 0,
                );
              },
              itemBuilder: (BuildContext context, int index) {
                return HomeChat(
                  user: ChatUsersCubit.get(context).allUsers[index],
                  // name: "jo",
                );
              },
              itemCount: 1,
            ),
          ),
        );
      },
    );
  }
}
