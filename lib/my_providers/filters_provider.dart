import 'package:flutter_riverpod/flutter_riverpod.dart';

enum Filter { offline, esports }

class Filtersprovider extends StateNotifier<Map<Filter, bool>> {
  Filtersprovider()
      : super({Filter.esports:false, Filter.offline:false});

  void setFilter(Filter filter, bool active) {
    state = {...state, filter: active};
  }
  void setallfilters(Map<Filter, bool> chosen){
    state = chosen;
  }
}

final filtersprov = StateNotifierProvider<Filtersprovider, Map<Filter, bool>>(
  (ref) => Filtersprovider(),
);
