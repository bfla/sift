@Messages = new Mongo.Collection('messages')

_schema = new SimpleSchema
  to:
    type: String
    optional: true
  from:
    type: String
    optional: true
  re:
    type: String
    optional: true
  body:
    type: String
    optional: true
  archived:
    type: Boolean
    defaultValue: false
  # attachments:
    # type:
  createdAt:
    type: Date
    defaultValue: new Date()
  updatedAt:
    type: Date
    autoValue: -> new Date()
Messages.attachSchema(_schema)

Messages.allow
  insert: (userId, doc) -> return true if doc.userId is userId
  update: (userId, doc, fieldNames, mod) -> return true if doc.userId is userId
  remove: (userId, doc) -> return true if doc.userId is userId

# Messages.deny
  # insert: (userId, doc) -> return true
  # update: (userId, doc) -> return true
  # remove: (userId, doc) -> return true
