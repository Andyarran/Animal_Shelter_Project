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

  def save()
      sql = " INSERT INTO animals
      (name, type, ready, sex, age, description, owner_id) 
      VALUES
      ('#{@name}', '#{@type}', '#{@ready}', '#{@sex}', '#{@age}', '#{@description}', '#{@owner_id}')
      RETURNING id; "
      animal_details = SqlRunner.run(sql).first
      @id = animal_details['id'.to_i]
  end

  def delete()
      sql = " DELETE FROM animals WHERE id = #{id}; "
      SqlRunner.run(sql)
  end

  def update()
      sql = " UPDATE animals SET
      (name, type, ready, sex, age, description, owner_id)
      VALUES
       ('#{@name}', '#{@type}', '#{@ready}', '#{@sex}', '#{@age}', '#{@description}', '#{@owner_id}')
       WHERE id = #{id}; "
       SqlRunner.run(sql)
  end

  ########################### <- Class Functions Below -> ##################################

  def self.delete_all()
      sql = " DELETE FROM animals; "
      SqlRunner.run(sql)
  end

  def self.all
      sql = " SELECT * FROM animals; "
      animals_all = SqlRunner.run(sql)
      animals = animals_all.map { |animal| Animal.new(animal) }
      return animals
  end

  def self.find(id)
      sql = " SELECT * FROM animals WHERE id = #{id}; "
      animals = SqlRunner.run(sql).first
      result = animals.map { |animal| Animal.new(animal)}
      return result
  end
























end