@Splash = React.createClass
  # mixins: [ReactMeteorData, SpinnerMixin]

  # propTypes:
    # foo: React.PropTypes.object.isRequired

  # getMeteorData: ->
    # subs = [Meteor.subscribe('foo')]
    # data =
      # subscriptions: subs
      # foo: Foo.find()
    # return data 

  signinWithGmail: (e) ->
    e.preventDefault()
    Meteor.loginWithGoogle (err, res) ->
      return sAlert.error(err.message) if err?
      sAlert.success('Welcome')

  render: ->
    return (
      <div>
        <div className='splash'>
          <div className='col-md-12'>
            <h1 className='title-splash'>Sift</h1>
            <p className='lead subtitle-splash'>Only read emails that are actually important</p>
            <a 
              href='#' 
              className='btn btn-default-outline btn-splash'
              onClick={@signinWithGmail}
            >
              <i className='fa fa-google'></i>
              <span> </span>
              Signin with Gmail
            </a>
          </div>
        </div>
      </div>
    )
  