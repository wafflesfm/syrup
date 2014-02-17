Syrup.Router.map ->
    @resource 'artists', ->
        @resource 'artist', path: '/:artist_id', ->
            @route 'edit'
        @route 'create'

    @resource 'torrents', path: '/browse', ->
        @resource 'torrent', path: '/:torrent_id', ->
            @route 'edit'
        @route 'music'
        @route 'books'
        @route 'apps'
        @route 'create'
