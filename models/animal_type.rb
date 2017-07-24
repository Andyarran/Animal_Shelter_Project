class AnimalType

  attr_reader :type, :id

  def initialize(options)
      @id = options['id'].to_i if options['id']
      @type = options['type']
  end

  def save()
      sql = " INSERT INTO animal_types(type) VALUES ('#{@type}') RETURNING *; "
      animal_type = SqlRunner.run(sql).first
      @id = animal_type['id'].to_i
  end

  ########################### Class Functions Below ###########################################

  def self.delete_all()
      sql = "DELETE FROM animal_types;"
      SqlRunner.run(sql)
  end

  def self.find(find_id)
      sql = " SELECT * FROM animal_types WHERE id = #{find_id}"
      types = SqlRunner.run(sql).first
      return AnimalType.new(types)
  end

  def self.all()
      sql = "SELECT * FROM animal_types;"
      animals = SqlRunner.run(sql)
      animal_types = animals.map { |type| AnimalType.new(type)}
      return animal_types
  end

























end