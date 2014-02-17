Syrup.ApplicationAdapter = DS.FixtureAdapter.extend
    queryFixtures: (records, query, type)->
        console.log('in queryFixtures')
        records.filter (record)->
            for own key, value of query
                if record[key] != value
                    return false
            return true
