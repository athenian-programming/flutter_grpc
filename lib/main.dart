import 'package:flutter/material.dart';
import 'package:flutter_helloworld/services/hello_service.dart';
import 'package:grpc/grpc.dart';

void main() => runApp(FlutterGrpcApp());

class FlutterGrpcApp extends StatefulWidget {
  _FlutterGrpcAppState createState() => _FlutterGrpcAppState();
}

class _FlutterGrpcAppState extends State<FlutterGrpcApp> {
  List<DropdownMenuItem<String>> _hostnameMenuAddresses;
  ClientChannel _clientChannel;

  List _hostnames = ["localhost", "167.99.110.122"];
  var _currentHostname = "";
  var _nameValue = "";
  var _sliderValue = 10;
  var _singleGrpcResult = "";
  var _repeatedGrpcResult = "";
  var _singleOnPressed;
  var _multipleOnPressed;

  @override
  void initState() {
    _hostnameMenuAddresses = getHostnameMenuItems();
    _currentHostname = _hostnameMenuAddresses[0].value;
    super.initState();
  }

  List<DropdownMenuItem<String>> getHostnameMenuItems() {
    List<DropdownMenuItem<String>> items = List();
    for (String hostname in _hostnames)
      items.add(DropdownMenuItem(value: hostname, child: Text(hostname)));
    return items;
  }

  ClientChannel getClient() {
    if (_clientChannel == null) {
      const options = ChannelOptions(
        //TODO: Change to secure with server certificates
          credentials: ChannelCredentials.insecure(),
          idleTimeout: Duration(minutes: 1));
      _clientChannel = ClientChannel(_currentHostname.trim(), port: 50051, options: options);
    }
    return _clientChannel;
  }

  @override
  Widget build(BuildContext context) {
    if (_currentHostname.isNotEmpty && _nameValue.isNotEmpty) {
      _singleOnPressed = () async {
        setState(() {
          _singleGrpcResult = "Waiting...";
        });
        var name = _nameValue.isNotEmpty ? _nameValue : "None";
        var hello = await HelloService.sayHello(getClient(), name);
        setState(() {
          _singleGrpcResult = hello.message;
        });
      };

      _multipleOnPressed = () async {
        setState(() {
          _repeatedGrpcResult = "Waiting...";
        });

        var name = _nameValue.isNotEmpty ? _nameValue : "None";
        await for (var hello in HelloService.sayHelloRepeatedly(getClient(), name, _sliderValue)) {
          setState(() {
            _repeatedGrpcResult = hello.message;
          });
        }
      };
    } else {
      _singleOnPressed = null;
      _multipleOnPressed = null;
    }

    final hostnameRow = Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text("gRPC Server: "),
          Container(
            padding: EdgeInsets.all(16.0),
          ),
          DropdownButton(
              value: _currentHostname,
              items: _hostnameMenuAddresses,
              onChanged: (text) {
                setState(() {
                  _currentHostname = text;
                });
              })
        ]);

    final nameInput = Padding(
        padding: EdgeInsets.fromLTRB(75, 0, 75, 20),
        child: TextField(
          autofocus: true,
          textAlign: TextAlign.center,
          decoration: InputDecoration(border: OutlineInputBorder(), labelText: "Name", hintText: 'Please enter a name'),
          onChanged: (text) {
            setState(() {
              _nameValue = text;
            });
          },
        ));

    final slider = Padding(
        padding: EdgeInsets.fromLTRB(75, 0, 75, 0),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <Widget>[
          Flexible(
              flex: 1,
              child: Slider(
                min: 1.0,
                max: 15.0,
                onChanged: (newVal) {
                  setState(() => _sliderValue = newVal.toInt());
                },
                value: _sliderValue.toDouble(),
              )),
          Container(width: 30.0, alignment: Alignment.center, child: Text('${_sliderValue.toInt()}')),
        ]));

    final singleButton = FlatButton(
        onPressed: _singleOnPressed,
        color: Theme
            .of(context)
            .primaryColor,
        disabledColor: Theme
            .of(context)
            .primaryColorLight,
        child: Text(
          "Click for a single result",
          style: TextStyle(color: Colors.white),
        ));

    final multiButton = FlatButton(
        onPressed: _multipleOnPressed,
        color: Theme
            .of(context)
            .primaryColor,
        disabledColor: Theme
            .of(context)
            .primaryColorLight,
        child: Text(
          "Click for multiple results",
          style: TextStyle(color: Colors.white),
        ));

    final buttonPadding = Padding(padding: const EdgeInsets.symmetric(vertical: 15));

    return MaterialApp(
        title: 'Flutter HelloWorld',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: Text("Flutter HelloWorld"),
            ),
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      hostnameRow,
                      buttonPadding,
                      nameInput,
                      slider,
                      buttonPadding,
                      singleButton,
                      Text(_singleGrpcResult.isNotEmpty ? "$_singleGrpcResult" : ""),
                      buttonPadding,
                      multiButton,
                      Text(_repeatedGrpcResult.isNotEmpty ? "$_repeatedGrpcResult" : "")
                    ]))));
  }
}
