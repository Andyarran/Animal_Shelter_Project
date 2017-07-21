require_relative( '../db/sql_runner' )

class Customer

attr_reader( :id, :first_name, :last_name, :address, :telephone)

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

  def update()
      sql = " UPDATE customers SET
      (first_name, last_name, address, telephone)
      VALUES
      ('#{@first_name}', '#{@last_name}', '#{@address}', '#{@telephone}')
      WHERE id = #{@id}; "
      SqlRunner.run(sql)
  end

  def delete()
      sql = " DELETE FROM customers WHERE id = #{@id};"
      SqlRunner.run(sql)
  end

  def find_animal()
      sql = "SELECT * FROM animals WHERE id = #{@animal_id};"
      animal = SqlRunner.run(sql).first
      result = Animal.new( animal )
      return result
  end


  ########################### <- Class Functions Below -> ##################################


  def self.delete_all()
      sql = " DELETE FROM customers; "
      SqlRunner.run(sql)
  end

  def self.all()
      sql = " SELECT * FROM customers; "
      customer_all = SqlRunner.run(sql)
      customers = customer_all.map { |customer| Customer.new(customer) }
      return customers
  end

  def self.find(id)
      sql = " SELECT * FROM customers WHERE id = #{@id}; "
      customers = SqlRunner.run(sql).first
      result = customers.map { |customer| Customer.new(customer)}
      return result
  end







end


