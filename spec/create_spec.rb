describe "Creating tables" do
  before do
    @db = SQLite3::Database.new(':memory:')
    SQLRunner.make_methods
    @sql_runner = SQLRunner.new(@db)
    @sql_runner.execute_sql_create
  end

  context 'schools table' do 
    it "creates a schools table with a name field" do
      expect{@db.execute("SELECT name FROM schools;")}.to_not raise_exception
    end

    it "creates a schools table with a rating field" do
      expect{@db.execute("SELECT rating FROM schools;")}.to_not raise_exception
    end

    it "creates a schools table with a year_established field" do
      expect{@db.execute("SELECT year_established FROM schools;")}.to_not raise_exception
    end

    it "creates a table with an id as a primary key" do
      expect(@db.execute("PRAGMA table_info(schools);").detect { |arr| arr[-1] == 1 && arr[2] == "INTEGER" }.length).to eq(6)
    end
  end

  context 'courses table' do 
    it "creates a courses table with a name field" do
      expect{@db.execute("SELECT name FROM courses;")}.to_not raise_exception
    end

    it "has a column for foreign key school_id" do
      expect{@db.execute("SELECT school_id FROM courses;")}.to_not raise_exception
    end

    it "creates a table with an id as a primary key" do
      expect(@db.execute("PRAGMA table_info(courses);").detect { |arr| arr[-1] == 1 && arr[2] == "INTEGER" }.length).to eq(6)
    end
  end

  context 'students table' do 
    it "creates a students table with a name field" do
      expect{@db.execute("SELECT name FROM students;")}.to_not raise_exception
    end

    it "creates a students table with a age field" do
      expect{@db.execute("SELECT age FROM students;")}.to_not raise_exception
    end

    it "creates a table with an id as a primary key" do
      expect(@db.execute("PRAGMA table_info(students);").detect { |arr| arr[-1] == 1 && arr[2] == "INTEGER" }.length).to eq(6)
    end
  end

  context 'enrollments table' do 
    it 'has a column for foreign key student_id' do 
      expect{@db.execute("SELECT student_id FROM enrollments;")}.to_not raise_exception
    end

    it 'has a column for foreign key course_id' do 
      expect{@db.execute("SELECT course_id FROM enrollments;")}.to_not raise_exception
    end

    it "creates a table with an id as a primary key" do
      expect(@db.execute("PRAGMA table_info(enrollments);").detect { |arr| arr[-1] == 1 && arr[2] == "INTEGER" }.length).to eq(6)
    end
  end
end