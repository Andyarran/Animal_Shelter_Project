require_relative( '../db/sql_runner' )

class Animal

attr_reader( :id, :name, :admission_date, :type_id, :ready, :sex, :age, :description, :owner_id, :image)

  def initialize(options)
      @id = options['id'].to_i if options['id']
      @name = options['name']
      @admission_date = options['admission_date']
      @type_id = options['type_id'].to_i
      @ready = options['ready']
      @sex = options['sex']
      @age = options['age']
      @description = options['description']
      @owner_id = options['owner_id'].to_i
      @image = options['image']
  end

  def save()
      sql = " INSERT INTO animals
      (name, type_id, ready, sex, age, description, owner_id, image) 
      VALUES
      ('#{@name}', #{@type_id}, '#{@ready}', '#{@sex}', '#{@age}', '#{@description}', #{@owner_id}, '#{@image}')
      RETURNING id; "
      animal_details = SqlRunner.run(sql).first
      @id = animal_details['id'].to_i
  end

  def delete()
      sql = " DELETE FROM animals WHERE id = #{id}; "
      SqlRunner.run(sql)
  end

  def update()
      sql = " UPDATE animals 
      SET
      name = '#{@name}', 
      type_id = #{@type_id},
      ready = '#{@ready}',
      sex = '#{@sex}',
      age = '#{@age}',
      description = '#{@description}',
      owner_id = #{@owner_id} 
      WHERE id = #{@id}; "
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
      sql = "SELECT * FROM animals WHERE id = #{id};"
      animal = SqlRunner.run(sql).first
      results = Animal.new(animal)
      return results
  end

  def self.find_by_type(id)
    sql = "SELECT * FROM animals WHERE type_id = #{id};"
    puts sql
    animals = SqlRunner.run(sql)
    result = animals.map { |animal| Animal.new(animal)}
    return result
  end























end