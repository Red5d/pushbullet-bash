#pushbullet-bash
Created by Red5d - https://github.com/Red5d

This is a Bash interface to the PushBullet API (https://www.pushbullet.com/).

It can list your available devices and push different types of data to them.

Set your PushBullet API key by creating the file $HOME/.config/pushbullet and adding the line `PB_API_KEY=<your key>` to it. Alternatively you can specify a different config file or API key at runtime.

```
# Specifying a different config file at runtime
PB_CONFIG=~/.my-config pushbullet list

# Specifying a different API key at runtime
PB_API_KEY=1234 pushbullet list
```

This is intended to be a pure Bash utility with no non-Bash dependencies.

Pushbullet-bash also features a shell function similar to projects like [pushblast](https://github.com/alebcay/pushblast), [pushbullet-exit](https://github.com/rfilmyer/pushbullet-exit) and [pace](https://github.com/esamson/pace) to send a message after a specific command has finished.
