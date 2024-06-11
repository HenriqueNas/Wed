// ignore_for_file: public_member_api_docs

import 'dart:html';

class BrowserHistory {
  final History history = window.history;

  void pushState(Object? state, String title, String url) {
    history.pushState(state, title, url);
  }

  void replaceState(Object? state, String title, String url) {
    history.replaceState(state, title, url);
  }

  void go(int delta) {
    history.go(delta);
  }

  void back() {
    history.back();
  }

  void forward() {
    history.forward();
  }

  Stream<PopStateEvent> get onPopState => window.onPopState;
}
