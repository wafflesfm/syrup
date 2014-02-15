Syrup.TorrentEditRoute = Ember.Route.extend(
  model: (params) ->
    @get('store').find('torrent', @modelFor('torrent').id)
  setupController: (controller, model) ->
    controller.set 'model', model
    buffer = model.get('attributes').map (attr)->
      { key: attr.get('key'), value: attr.get('value') }
    controller.set 'buffer', buffer
)

