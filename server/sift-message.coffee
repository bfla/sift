@siftMessage = (userId, message) ->
  email =
    userId: userId
    message: message
  Emails.insert(email)
  return
