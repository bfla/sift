@MessageList = React.createClass
  mixins: [ReactMeteorData, SpinnerMixin]

  # propTypes:
    # foo: React.PropTypes.object.isRequired

  getMeteorData: ->
    subs = [Meteor.subscribe('messages')]
    data =
      subscriptions: subs
      messages: Messages.find().fetch()
    return data 

  render: ->
    return (
      <div className='message-list'>
        <h1> Message List</h1>
      </div>
    )
  