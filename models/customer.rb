require_relative( '../db/sql_runner' )

class Customer

attr_reader()

  def initialize(options)
      @id = options['id'].to_i if options['id']
      @first_name = options['first_name']
      @last_name = options['last_name']
      @address = options['address']
      @telephone = options['telephone']
  end

  def save()
      sql = " INSERT INTO customers
      (first_name, last_name, address, telephone)
      VALUES
      ('#{@first_name}', '#{@last_name}', '#{@address}', '#{@telephone}')
      RETURNING id;"
      customer_details = SqlRunner.run(sql).first
      @id = customer_details['id'].to_i
  end


  def find_animal()
      sql = "SELECT * FROM animals WHERE id = #{@animal_id}"
      animal = SqlRunner.run(sql).first
      result = Animal.new( animal )
      return result
  end

  def update()
      sql = " UPDATE customers SET
      (first_name, last_name, address, telephone)
      VALUES
      ('#{@first_name}', '#{@last_name}', '#{@address}', '#{@telephone}')
      WHERE id = #{@id} "
      SqlRunner.run(sql)
  end











end


