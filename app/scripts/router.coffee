Syrup.Router.map ->

  @resource 'artists', ->
    @resource 'artist', path: '/:artist_id', ->
      @route 'edit'
    @route 'create'
