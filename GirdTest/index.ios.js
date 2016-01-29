/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 */
'use strict';
import React, {
  AppRegistry,
  Component,
  StyleSheet,
  MapView,
  Text,
  View
} from 'react-native';

var CustomView = require('./CustomView');

var array = [ [ 'JOY', 'f','12', 'china'],
              [ 'EASON',  'm', '122', 'china'],
              [ 'LUCY',  'f', '112', 'china'],
              [ 'LILY',  'm', '132', 'china'],

             [ 'JOY',  'f', '12', 'china'],
             [ 'EASON',  'm', '122', 'china'],
             [ 'LUCY',  'f', '112', 'china'],
             [ 'LILY',  'm', '132', 'china'],

             [ 'JOY',  'f', '12', 'china'],
             [ 'EASON',  'm', '122', 'china'],
             [ 'LUCY',  'f', '112', 'china'],
             [ 'LILY',  'm', '132', 'china'],

             [ 'JOY',  'f', '12', 'china'],
             [ 'EASON',  'm', '122', 'china'],
             [ 'LUCY',  'f', '112', 'china'],
             [ 'LILY',  'm', '132', 'china'],

             [ 'JOY',  'f', '12', 'china'],
             [ 'EASON',  'm', '122', 'china'],
             ];

var leftTopTitle = '今日数据';
var nameArray = ['name1','name2', 'name3','name4','name5','name6',
                 'name7','name8','name9','name10','name11','name12',
                 'name13','name14','name15','name16','name17','name18'];
var titleArray = ['name', 'sex','age', 'country',
                  ];

class GirdTest extends Component {
  render() {
    return (
      <View style={styles.container}>

        <CustomView 
            girdData={array}
            leftTopTitle={leftTopTitle}
            nameArray={nameArray}
            titleArray={titleArray}
            style={styles.customView}>
        </CustomView>

        <View style = {styles.otherView}> 
         <Text>表格数据：实现类似EXCEL表格拖动</Text>
        </View>

      </View>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    // justifyContent: 'center',
    // alignItems: 'center',
    backgroundColor: '#F5FCFF',
  },



  customView:{
    flex: 1,
    marginTop: 20,
    // marginLeft: 5,
    // marginRight: 5,
    backgroundColor: '#F5FCFF',
  },
  otherView:{
    flex:1,
     justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#F5FCFF',

  },

});

AppRegistry.registerComponent('GirdTest', () => GirdTest);
