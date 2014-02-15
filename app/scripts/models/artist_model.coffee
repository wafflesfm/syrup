Syrup.Artist = DS.Model.extend({});

# Probably should be mixed-in...
Syrup.Artist.reopen
    attributes: (->
        model = @;
        Ember.keys(@get 'data').map( (key)->
            Em.Object.create(model: model, key: key, valueBinding: 'model.' + key);
        )
    ).property()

Syrup.Artist.FIXTURES = [

  {
    id: 0,

  },

  {
    id: 1,

  }

];
