// ignore_for_file: avoid_print
import 'package:mqtt_client/mqtt_client.dart';
import 'package:myapp/MQTT/state/MQTTAppState.dart';
import 'package:mqtt_client/mqtt_server_client.dart';
import 'package:flutter/foundation.dart';
import 'dart:io';

class MQTTManager {
  final MQTTAppState _currentState;
  MqttServerClient? _client;
  final String _identifier;
  final String _host;
  final String _topic;
  
  MQTTManager(
      {required String host,
      required String topic,
      required String identifier,
      required MQTTAppState state})
      : _identifier = identifier,
        _host = host,
        _topic = topic,
        _currentState = state;

  void initializeMQTTClient() {
    _client = MqttServerClient(_host, _identifier);
    _client!.port = 1883;
    _client!.keepAlivePeriod = 20;
    _client!.onDisconnected = onDisconnected;
    _client!.secure = false;
    _client!.logging(on: true);

    _client!.onConnected = onConnected;
    _client!.onSubscribed = onSubscribed;

    final MqttConnectMessage connMess = MqttConnectMessage()
        .authenticateAs('iot_intake42', 'iot_intake42')
        .withClientIdentifier(_identifier)
        .withWillTopic(
            'willtopic') // If you set this you must set a will message
        .withWillMessage('My Will message')
        .startClean() // Non persistent session for testing
        .withWillQos(MqttQos.atLeastOnce);
    print('Car Parking: Master of things connecting...');
    _client!.connectionMessage = connMess;
  }

  void connect() async {
    assert(_client != null);
    try {
      print('Car Parking: MOT start client connecting....');
      await _client!.connect();
    } on Exception catch (e) {
      print('Car Parking: client exception - $e');
      disconnect();
    }
  }

  void disconnect() {
    print('Car Parking: Disconnected');
    _client!.disconnect();
  }

  void publish(String message) {
    print("*********************************************************************");
    final MqttClientPayloadBuilder builder = MqttClientPayloadBuilder();
    builder.addString(message);
    _client!.publishMessage("iot_intake42/Parking/flutter", MqttQos.exactlyOnce, builder.payload!);
  }

  void onSubscribed(String topic) {
    print('Car Parking: Subscription confirmed for topic $topic');
  }

  void onDisconnected() {
    print('Car Parking: OnDisconnected client callback - Client disconnection');
    if (_client!.connectionStatus!.returnCode ==
        MqttConnectReturnCode.noneSpecified) {
      print('Car Parking: OnDisconnected callback is solicited, this is correct');
    }
  }

  void onConnected() {
    print('Car Parking: MOT client connected....');
    _client!.subscribe(_topic, MqttQos.atLeastOnce);
    _client!.updates!.listen((List<MqttReceivedMessage<MqttMessage?>>? c) {
      // ignore: avoid_as
      final MqttPublishMessage recMess = c![0].payload as MqttPublishMessage;
      final String pt =
          MqttPublishPayload.bytesToStringAsString(recMess.payload.message!);
      _currentState.setReceivedText(pt);
      print(
          'Car Parking: Change notification:: topic is <${c[0].topic}>, payload is <-- $pt -->');
      print('');
    });
    print(
        'Car Parking: OnConnected client callback - Client connection was sucessful');
  }
}