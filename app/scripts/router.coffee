Syrup.Router.map ->
    @route 'browse'

    @resource 'artists', ->
        @resource 'artist', path: '/:artist_id', ->
            @route 'edit'
        @route 'create'

    @resource 'torrents', ->
        @resource 'torrent', path: '/:torrent_id', ->
            @route 'edit'
        @route 'create'
