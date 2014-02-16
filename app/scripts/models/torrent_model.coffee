randomDate = (start, end) ->
    new Date(start.getTime() + Math.random() * (end.getTime() - start.getTime()))

Syrup.Torrent = DS.Model.extend(
    name: DS.attr 'string'
    posted_at: DS.attr 'date'
);

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
    Syrup.Torrent.FIXTURES[num] = {id: num, name: "Torrent #{num}", posted_at: randomDate(new Date(2012, 1, 1), new Date())}
