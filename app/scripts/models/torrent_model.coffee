Syrup.Torrent = DS.Model.extend({});

# Probably should be mixed-in...
Syrup.Torrent.reopen
    attributes: (->
        model = @;
        Ember.keys(@get 'data').map( (key)->
            Em.Object.create(model: model, key: key, valueBinding: 'model.' + key);
        )
    ).property()

Syrup.Torrent.FIXTURES = [

  {
    id: 0,

  },

  {
    id: 1,

  }

];
