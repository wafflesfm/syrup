Syrup.TorrentsAppsRoute = Ember.Route.extend
    model: ->
        @store.filter 'torrent', category: 'apps', (record) ->
            record.get('category') == 'apps'
