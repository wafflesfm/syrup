Syrup.ArtistRoute = Ember.Route.extend(
  model: (params) ->
    @get('store').find('artist', params.artist_id)
)

