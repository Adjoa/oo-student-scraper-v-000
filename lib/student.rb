class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url

  @@all = []

  def initialize(student_hash)
    @name = student_hash[:name]
    @location = student_hash[:location]

    self.class.all << self
  end

  def self.create_from_collection(students_array)
    students_array.each do |student|
      self.new(student)
    end
  end

  def add_student_attributes(attributes_hash)
    self.tap do |student_attr|
    self.bio = attributes_hash[:bio]
    self.blog = attributes_hash[:blog]
    self.profile_quote = attributes_hash[:profile_quote]
    self.linkedin = attributes_hash[:linkedin]
    self.twitter = attributes_hash[:twitter]
    self.github = attributes_hash[:github]
  end
    
  end

  def self.all
    @@all
  end
end
