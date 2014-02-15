Syrup.ArtistsRoute = Ember.Route.extend(
  model: ->
    @get('store').find('artist')
)

