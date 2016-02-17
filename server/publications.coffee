Meteor.publish 'messages', -> Messages.find(userId: @userId)
