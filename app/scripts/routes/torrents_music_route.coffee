Syrup.TorrentsMusicRoute = Ember.Route.extend
    model: ->
        @store.filter 'torrent', category: 'music', (record) ->
            record.get('category') == 'music'
