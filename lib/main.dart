import 'package:flutter/material.dart';
import 'package:flutter_helloworld/services/hello_service.dart';
import 'package:grpc/grpc.dart';

void main() => runApp(new FlutterGrpcApp());

class FlutterGrpcApp extends StatefulWidget {
  _FlutterGrpcAppState createState() => _FlutterGrpcAppState();
}

class _FlutterGrpcAppState extends State<FlutterGrpcApp> {
  ClientChannel _clientChannel;
  var _hostname = "";
  var _nameValue = "";
  var _sliderValue = 10;
  var _singleGrpcResult = "";
  var _repeatedGrpcResult = "";
  var _singleOnPressed;
  var _multipleOnPressed;

  ClientChannel getClient() {
    if (_clientChannel == null) {
      _clientChannel = ClientChannel(_hostname.trim(),
          port: 50051,
          options: ChannelOptions(
            //TODO: Change to secure with server certificates
            credentials: ChannelCredentials.insecure(),
            idleTimeout: Duration(minutes: 1),
          ));
    }
    return _clientChannel;
  }

  @override
  Widget build(BuildContext context) {
    if (_hostname.isNotEmpty && _nameValue.isNotEmpty) {
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

    return MaterialApp(
      title: 'Flutter gRPC Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter gRPC Demo"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.fromLTRB(75, 0, 75, 20),
                  child: TextField(
                    autofocus: true,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: "gRPC Server", hintText: 'Please enter a hostname'),
                    onChanged: (text) {
                      setState(() {
                        _hostname = text;
                      });
                    },
                  )),
              //
              Padding(
                  padding: EdgeInsets.fromLTRB(75, 0, 75, 20),
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: "Name", hintText: 'Please enter a name'),
                    onChanged: (text) {
                      setState(() {
                        _nameValue = text;
                      });
                    },
                  )),
              //
              Padding(
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
                  ])),
              //
              Padding(padding: const EdgeInsets.symmetric(vertical: 15)),
              //
              FlatButton(
                  onPressed: _singleOnPressed,
                  color: Theme.of(context).primaryColor,
                  disabledColor: Theme.of(context).primaryColorLight,
                  child: Text(
                    "Click for a single result",
                    style: TextStyle(color: Colors.white),
                  )),
              Text(_singleGrpcResult.isNotEmpty ? "$_singleGrpcResult" : ""),
              //
              Padding(padding: const EdgeInsets.symmetric(vertical: 16.0)),
              //
              FlatButton(
                  onPressed: _multipleOnPressed,
                  color: Theme.of(context).primaryColor,
                  disabledColor: Theme.of(context).primaryColorLight,
                  child: Text(
                    "Click for multiple results",
                    style: TextStyle(color: Colors.white),
                  )),
              Text(_repeatedGrpcResult.isNotEmpty ? "$_repeatedGrpcResult" : ""),
            ],
          ),
        ),
      ),
    );
  }
}
