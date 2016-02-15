@MainLayout = React.createClass

  render: ->
    return (
      <div className='main-layout'>
        <Alert />
        <main className='main-layout-content'>
          {@props.content}
        </main>
      </div>
    )
  