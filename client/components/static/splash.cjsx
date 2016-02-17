@Splash = React.createClass

  # TODO:
  # Configure Google logins -- see accounts UI...
  # Configure Gmail permissions .readonly vs write

  signinWithGmail: (e) ->
    e.preventDefault()
    Meteor.loginWithGoogle(
      requestOfflineToken: true
      forceApprovalPrompt: true
      requestPermissions: ["https://www.googleapis.com/auth/gmail.readonly"] # Hm...
    , @loginCallback)

  loginCallback: (err, res) ->
    return sAlert.error(err.message) if err?
    sAlert.warning('Welcome')

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
  