@MainLayout = React.createClass

  mixins: [ReactMeteorData, SpinnerMixin]

  propTypes:
    content: React.PropTypes.element

  getMeteorData: ->
    user: Meteor.user()

  renderContent: ->
    if @data.user?._id
      return <div>{@props.content}</div>
    else if Meteor.loggingIn()
      return <div>{@props.content}</div>
    else
      return (<Splash />)

  render: ->
    return (
      <div className='main-layout'>
        <Alert />
        <main className='main-layout-content'>
          {@renderContent()}
        </main>
      </div>
    )
  