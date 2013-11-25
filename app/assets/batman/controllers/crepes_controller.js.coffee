class Creperie.CrepesController extends Creperie.ApplicationController
  routingKey: 'crepes'

  @observeAll 'currentCrepe', (newValue, oldValue) ->
    Creperie.set('Title', newValue.get('name') )

  index: (params) ->

  show: (params) ->
    Creperie.Crepe.find params.id, (err, crepe) =>
      throw err if err
      @set 'currentCrepe', crepe

  edit: (params) ->
    Creperie.Crepe.find params.id, (err, crepe) =>
      throw err if err
      @set 'currentCrepe', crepe

  new: (params) ->
    @set 'currentCrepe', new Creperie.Crepe

  destroy: (params) ->

  saveCrepe: (crepe) ->
    crepe.save (err, crepe) =>
      throw err if err
      @redirect "/crepes/#{crepe.get('id')}"
