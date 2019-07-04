/**
 * @format
 */

import {AppRegistry} from 'react-native';

import {name as appName} from './app.json';

import _App from './App';

import CodePush from "react-native-code-push";
// 静默方式，app每次启动的时候，都检测一下更新 'ON_APP_RESUME'
// const codePushOptions = { checkFrequency: CodePush.CheckFrequency.ON_APP_RESUME };

// 手动方式接收更新的方式
const codePushOptions = { checkFrequency: CodePush.CheckFrequency.MANUAL };

// 在组件根节点的地方设置热更新。
const App = CodePush(codePushOptions)(_App);

AppRegistry.registerComponent(appName, () => App);
