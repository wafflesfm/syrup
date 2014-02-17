Syrup.TorrentsBooksRoute = Ember.Route.extend
    model: ->
        @store.filter 'torrent', category: 'books', (record) ->
            record.get('category') == 'books'
