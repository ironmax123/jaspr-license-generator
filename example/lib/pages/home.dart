import 'package:example/provider/license.dart';
import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_riverpod/jaspr_riverpod.dart';

@client
class Home extends StatefulComponent {
  const Home({super.key});

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    // Run code depending on the rendering environment.
    if (kIsWeb) {
      print("Hello client");
      // When using @client components there is no default `main()` function on the client where you would normally
      // run any client-side initialization logic. Instead you can put it here, considering this component is only
      // mounted once at the root of your client-side component tree.
    } else {
      print("Hello server");
    }
  }

  @override
  Component build(BuildContext context) {
    final licenses = context.watch(licenseServiceProvider);
    return section([
      img(src: 'images/logo.svg', width: 80),
      div(classes: 'license', [
        h1([Component.text('OSS Licenses')]),
        p([Component.text('${licenses.length} OSS licenses')]),
        for (final license in licenses) ...[
          h2(
            classes: 'license-item',
            [Component.text('${license.name} ${license.version ?? ''}')],
          ),
          div(classes: 'links', [
            a(href: license.repository ?? '/license?name=${Uri.encodeQueryComponent(license.name)}', [
              Component.text('Repository: ${license.repository ?? 'N/A'}'),
            ]),
            br(),
            a(href: license.homepage ?? '/license?name=${Uri.encodeQueryComponent(license.name)}', [
              Component.text('HomePage: ${license.homepage ?? 'N/A'}'),
            ]),
          ]),
          p([Component.text(license.license)]),
        ],
      ]),
    ]);
  }
}
