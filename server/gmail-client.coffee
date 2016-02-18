Meteor.methods
  initGmailClient: ->
    # on the server
    googleConf = ServiceConfiguration.configurations.findOne(service: 'google')

    google = Meteor.user().services.google

    client = new GMail.Client(
      clientId: googleConf.clientId
      clientSecret: googleConf.secret
      accessToken: google.accessToken
      expirationDate: google.expiresAt
      refreshToken: google.refreshToken
    )

    client.onNewEmail '', (message) -> siftMessage(Meteor.userId(), message)

    # client.onNewEmail '', (message) ->
    #   email = message
    #   Emails.insert()

