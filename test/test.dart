import 'package:unittest/unittest.dart';
import 'package:query_string/query_string.dart';

void main() {

  test('basic', () {
    var q = '?page=main&action=front&sid=h985jg9034gj498g859gh495&enc=+Hello%20&empty';
    var r = QueryString.parse(q);

    expect(r['page'], 'main');
    expect(r['action'], 'front');
    expect(r['sid'], 'h985jg9034gj498g859gh495');
    expect(r['enc'], ' Hello ');
    expect(r['empty'], '');
  });
}