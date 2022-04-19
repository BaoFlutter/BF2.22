
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:provider/provider.dart';
import '../data_sources/firebase_services.dart';
import '../models/app_user.dart';
import '../models/message.dart';
import '../resources/constants.dart';
import '../resources/widgets/conversation/header_conversation.dart';
import '../resources/widgets/conversation/input_message.dart';
import '../resources/widgets/conversation/message_item.dart';
import '../resources/widgets/conversation/option_item.dart';
import '../view_models/firbase_auth_provider.dart';
import '../view_models/message_provider.dart';


class ConversationScreen extends StatefulWidget {
  const ConversationScreen({Key? key, required this.receiver, this.chatRoomId})
      : super(key: key);
  final AppUser receiver;
  final String? chatRoomId;

  @override
  _ConversationScreenState createState() => _ConversationScreenState();
}

class _ConversationScreenState extends State<ConversationScreen> {
  FirebaseServices firebaseServices = FirebaseServices();
  TextEditingController _messController = TextEditingController();
  bool isShowOption = false;
  @override
  Widget build(BuildContext context) {
    final user = context.read<FirebaseAuthProvider>().appUser!;
    return ChangeNotifierProvider<MessageProvider>(
      create: (_) => MessageProvider(
          user: user, receiver: widget.receiver, chatRoomId: widget.chatRoomId),
      builder: (context, child) {
        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Scaffold(
            body: context.watch<MessageProvider>().isLoading
                ? Center(
              child: CircularProgressIndicator(),
            )
                : SafeArea(
              child: Stack(
                children: [
                  Column(
                    children: [
                      HeaderConversation(receiver: widget.receiver),
                      context.watch<MessageProvider>().chatRoomId !=
                          null
                          ? StreamBuilder<
                          QuerySnapshot<Map<String, dynamic>>>(
                          stream: firebaseServices.getStreamMessage(
                              context
                                  .watch<MessageProvider>()
                                  .chatRoomId!),
                          builder: (context, snapshot) {
                            if (!snapshot.hasData) {
                              return Expanded(
                                child: Center(
                                  child: CircularProgressIndicator(),
                                ),
                              );
                            }
                            List<Message> listMessage = snapshot
                                .data!.docs
                                .map<Message>(
                                    (e) => Message.fromJson(e.data()))
                                .toList();
                            return Expanded(
                                child: ListView.builder(
                                  cacheExtent: 1000,
                                  padding: EdgeInsets.only(bottom: 24),
                                  itemCount: listMessage.length,
                                  reverse: true,
                                  physics: BouncingScrollPhysics(),
                                  itemBuilder: (context, index) {
                                    final isMe = user.uid ==
                                        listMessage[index].senderId;
                                    bool isMidle = false;
                                    bool isLast = false;
                                    if (index != 0 &&
                                        index < listMessage.length - 1) {
                                      isMidle = listMessage[index]
                                          .senderId ==
                                          listMessage[index - 1]
                                              .senderId &&
                                          listMessage[index].senderId ==
                                              listMessage[index + 1]
                                                  .senderId;
                                      isLast = listMessage[index]
                                          .senderId ==
                                          listMessage[index - 1]
                                              .senderId &&
                                          listMessage[index].senderId !=
                                              listMessage[index + 1]
                                                  .senderId;
                                    }
                                    return MessageItem(
                                      message: listMessage[index],
                                      isMe: isMe,
                                      isMidle: isMidle,
                                      isLast: isLast,
                                    );
                                  },
                                ));
                          })
                          : Expanded(
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 56),
                              child: Text(
                                "Say Hello to your new friend",
                                style: txtMedium(24),
                              ),
                            ),
                          )),
                      InputMessage(
                        controller: _messController,
                        iconOption: isShowOption ? closeIcon : addIcon,
                        onTapOption: () {
                          setState(() {
                            isShowOption = !isShowOption;
                          });
                        },
                      )
                    ],
                  ),
                  OptionItemMessage(
                    onTap: () async {
                      await context
                          .read<MessageProvider>()
                          .onPickCamera();
                    },
                    duration: Duration(milliseconds: 1000),
                    color: Color(0xff0066ff),
                    icon: cameraIcon,
                    isShow: isShowOption,
                    showPositionBottom: 72,
                    showPositionLeft: 16,
                  ),
                  OptionItemMessage(
                    onTap: () async {
                      await context
                          .read<MessageProvider>()
                          .mediaPicker(context, RequestType.image);
                    },
                    duration: Duration(milliseconds: 900),
                    color: Color(0xff4F2BFF),
                    icon: imageIcon,
                    isShow: isShowOption,
                    showPositionBottom: 72,
                    showPositionLeft: 16 * 2 + 38,
                  ),
                  OptionItemMessage(
                    onTap: () async {
                      await context
                          .read<MessageProvider>()
                          .mediaPicker(context, RequestType.video);
                    },
                    duration: Duration(milliseconds: 800),
                    color: Color(0xff38963C),
                    icon: videoIcon,
                    isShow: isShowOption,
                    showPositionBottom: 72,
                    showPositionLeft: 16 * 3 + 38 * 2,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
