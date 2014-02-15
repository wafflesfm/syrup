Syrup.Torrent = DS.Model.extend({});

# Probably should be mixed-in...
Syrup.Torrent.reopen
    attributes: (->
        model = @
        Ember.keys(@get 'data').map( (key)->
            Em.Object.create(model: model, key: key, valueBinding: 'model.' + key)
        )
    ).property()


Syrup.Torrent.FIXTURES = []

for num in [1..100]
    Syrup.Torrent.FIXTURES[num] = {id: num}
