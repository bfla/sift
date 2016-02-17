<img src='https://codeship.com/projects/ceefd040-b6f2-0133-1556-6accf076bcef/status?branch=master'/>

## Initial setup:
Google credentials must be setup (can be generated from console.developers.google.com):
```
# Easiest way to do this is from browser
var opts = {service: "google", clientId: "KEY", secret: "SECRET", loginStyle: "popup" };
ServiceConfiguration.configurations.insert(opts);

```