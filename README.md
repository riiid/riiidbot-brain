# riiidbot-brain

A tiny firebase brain for [riiidbot](https://github.com/riiid/riiidbot).

## Install

```
npm install riiidbot-brain
```

## Usage

`FIREBASE_SECRET`, `FIREBASE_URL` should be on environemnt variable.

```coffee
B = require 'riiidbot-brain'

# firebase root ref can be accessed via B.root
root   = B.root
keyRef = root.child 'key'

# callback will be called when authentication complete successfully
B.root.onAuth (auth) ->
  return unless auth
  # fetch data or other initialization process
```
