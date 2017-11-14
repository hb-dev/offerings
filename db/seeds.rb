Port.destroy_all
Stop.destroy_all
Route.destroy_all
Offering.destroy_all

Port.create(name: 'Shanghai', code: 'CN SHA', country: 'China')
Port.create(name: 'Singapore', code: 'SG SIN', country: 'Singapore')
Port.create(name: 'Yangzhou', code: 'CN YZH', country: 'China')
Port.create(name: 'Nantong', code: 'CN NTG', country: 'China')
Port.create(name: 'Hong Kong', code: 'HK HKG', country: 'Hong Kong')
Port.create(name: 'Maanshan', code: 'CN MAA', country: 'China')
Port.create(name: 'Amsterdam', code: 'NL AMS', country: 'Nederlands')

cpt = Port.create(name: 'Cape Town', code: 'ZA CPT', country: 'South Africa')
dur = Port.create(name: 'Durban', code: 'ZA DUR', country: 'South Africa')
rcb = Port.create(name: 'Richards Bay', code: 'ZA RCB', country: 'South Africa')
plz = Port.create(name: 'Port Elizabeth', code: 'ZA PLZ', country: 'South Africa')
mzy = Port.create(name: 'Mossel Bay', code: 'ZA MZY', country: 'South Africa')

cape_town = Route.create(name: 'Cape Town Roundtrip')
cape_town_durban = Route.create(name: 'Cape Town - Durban')

Stop.create(route: cape_town, port: cpt, arrival: '2017-11-10T17:25:10.310Z')
Stop.create(route: cape_town, port: plz, arrival: '2017-11-11T17:25:10.310Z')
Stop.create(route: cape_town, port: mzy, arrival: '2017-11-12T17:25:10.310Z')
Stop.create(route: cape_town, port: rcb, arrival: '2017-11-13T17:25:10.310Z')
Stop.create(route: cape_town, port: dur, arrival: '2017-11-14T17:25:10.310Z')
Stop.create(route: cape_town, port: cpt, arrival: '2017-11-15T17:25:10.310Z')

Stop.create(route: cape_town_durban, port: cpt, arrival: '2017-11-20T17:25:10.310Z')
Stop.create(route: cape_town_durban, port: plz, arrival: '2017-11-21T17:25:10.310Z')
Stop.create(route: cape_town_durban, port: mzy, arrival: '2017-11-22T17:25:10.310Z')
Stop.create(route: cape_town_durban, port: rcb, arrival: '2017-11-23T17:25:10.310Z')
Stop.create(route: cape_town_durban, port: dur, arrival: '2017-11-24T17:25:10.310Z')

Offering.create(route: cape_town, company: 'ZA Cargo Travel', title: 'Cape Town RT 1', price: 3059.99)
Offering.create(route: cape_town, company: 'ZA Cargo Travel', title: 'Cape Town RT 2', price: 3959.99)

Offering.create(route: cape_town_durban, company: 'ZA Cargo Travel', title: 'Cape Town Durban 1', price: 3059.99)
Offering.create(route: cape_town_durban, company: 'ZA Cargo Travel', title: 'Cape Town Durban 2', price: 3959.99)
