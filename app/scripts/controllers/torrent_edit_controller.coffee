Syrup.TorrentEditController = Ember.ObjectController.extend(
  needs: 'torrent'
  actions:
    save: ->
      self = this
      @get('buffer').forEach (attr)->
        self.get('controllers.torrent.model').set(attr.key, attr.value)
      @transitionToRoute 'torrent', @get('model')
)
