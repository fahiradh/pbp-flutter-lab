import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:counter_7/modal/mywatchlist.dart';

Future<List<WatchList>> fetchWatchList() async {
        var url = Uri.parse('https://katalog-barang.herokuapp.com/mywatchlist/json');
        var response = await http.get(
        url,
        headers: {
            "Access-Control-Allow-Origin": "*",
            "Content-Type": "application/json",
        },
        );

        // melakukan decode response menjadi bentuk json
        var data = jsonDecode(utf8.decode(response.bodyBytes));

        // melakukan konversi data json menjadi object WatchList
        List<WatchList> watchlist = [];
        for (var d in data) {
        if (d != null) {
            watchlist.add(WatchList.fromJson(d));
        }
        }

        return watchlist;
    }