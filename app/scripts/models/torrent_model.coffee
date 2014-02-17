randomDate = (start, end) ->
    new Date(start.getTime() + Math.random() * (end.getTime() - start.getTime()))

Syrup.Torrent = DS.Model.extend
    name: DS.attr 'string'
    imageUrl: DS.attr 'string'
    postedAt: DS.attr 'date'
    category: DS.attr 'string'

# Probably should be mixed-in...
Syrup.Torrent.reopen
    attributes: (->
        model = @
        Ember.keys(@get 'data').map (key)->
            Em.Object.create(model: model, key: key, valueBinding: 'model.' + key)
    ).property()


Syrup.Torrent.FIXTURES = []

for num in [1..100]
    category = switch
        when num % 5 == 0 then "books"
        when num % 3 == 0 then "apps"
        else "music"

    Syrup.Torrent.FIXTURES[num] = {
        id: num
        name: "Torrent #{num}"
        postedAt: randomDate(new Date(2012, 1, 1), new Date())
        imageUrl: "http://placekitten.com/153/153"
        category: category
    }
