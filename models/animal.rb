require_relative( '../db/sql_runner' )

class Animal

attr_reader( :id, :name, :type, :ready, :sex, :age, :description, :owner_id)

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @type = options['type']
    @ready = options['ready']
    @sex = options['sex']
    @age = options['age']
    @description = options['description']
    @owner_id = options['owner_id'].to_i
  end

  



























end