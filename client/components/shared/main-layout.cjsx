@MainLayout = React.createClass

  render: ->
    return (
      <div className='main-layout'>
        <main className='main-layout-content'>
          {@props.content}
        </main>
      </div>
    )
  