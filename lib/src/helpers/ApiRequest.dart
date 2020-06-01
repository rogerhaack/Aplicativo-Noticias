import 'package:load/load.dart';
import 'Api.dart';

class ApiRequest {
  String url;

  ApiRequest(String url) {
    this.url = url;
  }

  request() async {
    Api api = Api();

    Map<String, dynamic> news;

    try {
      showLoadingDialog();

      news = await api.getRequest(this.url);

      hideLoadingDialog();

      return news;
    } catch (error) {
      hideLoadingDialog();

      return {"status": 400, "data": ""};
    }

  }

}
