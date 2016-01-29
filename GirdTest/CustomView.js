/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 */
'use strict';

var React = require('react-native');
var PropTypes = require('ReactPropTypes');
var ReactNativeViewAttributes = require('ReactNativeViewAttributes');
var createReactNativeComponentClass = require('createReactNativeComponentClass');
var StyleSheet = require('StyleSheet');
var NativeMethodsMixin = require('NativeMethodsMixin');
var flattenStyle = require('flattenStyle');
var merge = require('merge');
var { View } = React;

var RCTCustomView = createReactNativeComponentClass({
    validAttributes: merge(ReactNativeViewAttributes.UIView, {
        girdData:true,
        leftTopTitle:true,
        nameArray:true,
        titleArray:true,
    }),
    uiViewClassName: 'RCTCustomView'
});

var RCTCustom = React.createClass({
  mixins: [NativeMethodsMixin],

  viewConfig: {
        uiViewClassName: 'UIView',
        validAttributes: ReactNativeViewAttributes.UIView
  },

  render(){
    var nativeProps = merge(this.props, {
            style: this.props.style,
            girdData: this.props.girdData,
            leftTopTitle: this.props.leftTopTitle,
            nameArray: this.props.nameArray,
            titleArray: this.props.titleArray

        });
    return <RCTCustomView {... nativeProps}/>
  }
});

module.exports = RCTCustom;

