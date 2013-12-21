Original Author: Red5d - https://github.com/Red5d
This version: Sean Payne - https://github.com/zerodivide1


This is a Bash interface to the PushBullet API (https://www.pushbullet.com/).

It can list your available devices and push different types of data to them.

Set your PushBullet API key by creating the file $HOME/.config/pushbullet and adding the line API_KEY=<your key> to it.
Alternatively, you can call Pushbullet in a single line by setting the variable $CONFIG in the same call to pushbullet. For eample:
```
CONFIG=/path/to/pushbulletconfig bash -c pushbullet...
```

Requirements
------------
 * curl
 * jsontool (https://github.com/trentm/json)
