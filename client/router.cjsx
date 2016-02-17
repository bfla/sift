target = document.getElementById('react-target')

FlowRouter.route('/',
  action: (params) ->
    ReactLayout.render(
      MainLayout, 
      content: <MessageList />
    )
)
