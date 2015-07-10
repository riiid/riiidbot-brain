FB = require 'firebase'
FG = require 'firebase-token-generator'

SECRET = process.env['FIREBASE_SECRET']
URL    = process.env['FIREBASE_URL']

fg = new FG SECRET if SECRET
fb = new FB URL if URL

payload =
  uid : '0'
  hubot : true

token_opt = expires : 3479786042

token = fg?.createToken payload, token_opt

fb?.authWithCustomToken token, (err, auth) ->
  return console.error 'Brain Fucked', err if err

reAuth =-> console.error 'Not implemented'

exports.root   = fb
exports.reAuth = reAuth
