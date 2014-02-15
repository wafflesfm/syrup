Syrup.TorrentRoute = Ember.Route.extend(
  model: (params) ->
    @get('store').find('torrent', params.torrent_id)
)

