Syrup.ArtistEditController = Ember.ObjectController.extend(
  needs: 'artist'
  actions:
    save: ->
      self = this
      @get('buffer').forEach (attr)->
        self.get('controllers.artist.model').set(attr.key, attr.value)
      @transitionToRoute 'artist', @get('model')
)
