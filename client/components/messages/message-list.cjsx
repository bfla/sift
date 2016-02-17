@MessageList = React.createClass
  # mixins: [ReactMeteorData, SpinnerMixin]

  # propTypes:
    # foo: React.PropTypes.object.isRequired

  # getMeteorData: ->
    # subs = [Meteor.subscribe('foo')]
    # data =
      # subscriptions: subs
      # foo: Foo.find()
    # return data 

  render: ->
    return (
      <div className='message-list'>
        <h1> Message List</h1>
      </div>
    )
  