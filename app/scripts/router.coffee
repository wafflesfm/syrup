Syrup.Router.map ->

    @resource 'torrents', path: '/browse', ->
        @route 'music'
        @route 'books'
        @route 'apps'
        @route 'create'
        @resource 'torrent', path: '/:torrent_id', ->
            @route 'edit'
