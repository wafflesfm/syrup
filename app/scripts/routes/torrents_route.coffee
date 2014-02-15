Syrup.TorrentsRoute = Ember.Route.extend(
  model: ->
    @get('store').find('torrent')
)

