sfdxplugin
==========

Testing sfdx plugin

[![Version](https://img.shields.io/npm/v/sfdxplugin.svg)](https://npmjs.org/package/sfdxplugin)
[![CircleCI](https://circleci.com/gh/cgsmeets/sfdxplugin/tree/master.svg?style=shield)](https://circleci.com/gh/cgsmeets/sfdxplugin/tree/master)
[![Appveyor CI](https://ci.appveyor.com/api/projects/status/github/cgsmeets/sfdxplugin?branch=master&svg=true)](https://ci.appveyor.com/project/heroku/sfdxplugin/branch/master)
[![Codecov](https://codecov.io/gh/cgsmeets/sfdxplugin/branch/master/graph/badge.svg)](https://codecov.io/gh/cgsmeets/sfdxplugin)
[![Greenkeeper](https://badges.greenkeeper.io/cgsmeets/sfdxplugin.svg)](https://greenkeeper.io/)
[![Known Vulnerabilities](https://snyk.io/test/github/cgsmeets/sfdxplugin/badge.svg)](https://snyk.io/test/github/cgsmeets/sfdxplugin)
[![Downloads/week](https://img.shields.io/npm/dw/sfdxplugin.svg)](https://npmjs.org/package/sfdxplugin)
[![License](https://img.shields.io/npm/l/sfdxplugin.svg)](https://github.com/cgsmeets/sfdxplugin/blob/master/package.json)

<!-- toc -->
* [Debugging your plugin](#debugging-your-plugin)
<!-- tocstop -->
<!-- install -->
<!-- usage -->
```sh-session
$ npm install -g sfdxplugin
$ sfdx COMMAND
running command...
$ sfdx (-v|--version|version)
sfdxplugin/0.0.0 darwin-x64 node-v12.13.0
$ sfdx --help [COMMAND]
USAGE
  $ sfdx COMMAND
...
```
<!-- usagestop -->
<!-- commands -->

<!-- commandsstop -->
<!-- debugging-your-plugin -->
# Debugging your plugin
We recommend using the Visual Studio Code (VS Code) IDE for your plugin development. Included in the `.vscode` directory of this plugin is a `launch.json` config file, which allows you to attach a debugger to the node process when running your commands.

To debug the `hello:org` command: 
1. Start the inspector
  
If you linked your plugin to the sfdx cli, call your command with the `dev-suspend` switch: 
```sh-session
$ sfdx hello:org -u myOrg@example.com --dev-suspend
```
  
Alternatively, to call your command using the `bin/run` script, set the `NODE_OPTIONS` environment variable to `--inspect-brk` when starting the debugger:
```sh-session
$ NODE_OPTIONS=--inspect-brk bin/run hello:org -u myOrg@example.com
```

2. Set some breakpoints in your command code
3. Click on the Debug icon in the Activity Bar on the side of VS Code to open up the Debug view.
4. In the upper left hand corner of VS Code, verify that the "Attach to Remote" launch configuration has been chosen.
5. Hit the green play button to the left of the "Attach to Remote" launch configuration window. The debugger should now be suspended on the first line of the program. 
6. Hit the green play button at the top middle of VS Code (this play button will be to the right of the play button that you clicked in step #5).
<br><img src=".images/vscodeScreenshot.png" width="480" height="278"><br>
Congrats, you are debugging!
