/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 * @flow
 */

import React, { Component } from 'react';
import {
  AppRegistry,
  StyleSheet,
  Text,
  View,
  WebView,
  Dimensions,
  NativeModules
} from 'react-native';

var { width, height} = Dimensions.get('window')

export default class Adblock extends Component {

  componentWillMount() {
    NativeModules.AdblockManager.setAdblock((result) => {
      console.log("Adblock TEST: " + result)
    })
  }

  render() {
    return (
      <View style={styles.container}>
        <WebView source={{uri: 'http://blogtruyen.com'}}
        startInLoadingState={true}
        style={{marginTop: 20, flex: 1, width: width, height:height }}/>
      </View>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#F5FCFF',
  },
});

AppRegistry.registerComponent('Adblock', () => Adblock);
