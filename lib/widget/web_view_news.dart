import 'package:flutter/material.dart';
import 'package:news/models/articalsmodel.dart';
import 'package:webview_flutter/webview_flutter.dart';
class PostView extends StatefulWidget {
  const PostView({super.key, required this.url, });
final String url;
  @override
  State<PostView> createState() => _PostViewState();
}
class _PostViewState extends State<PostView> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..loadRequest(
        Uri.parse(widget.url),
      );
  }
  @override
  Widget build(BuildContext context) {
    return WebViewWidget(controller: controller,);
  }
}
