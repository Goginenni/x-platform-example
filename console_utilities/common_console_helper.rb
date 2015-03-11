
  def load_and_instantiate_pages(class_files)
    # Find all the classes in ObjectSpace before the requires
    before = ObjectSpace.each_object(Class).to_a
    # Require all files
    class_files.each {|file| require file }
    # Find all the classes now
    after = ObjectSpace.each_object(Class).to_a
    # Map on the difference and instantiate
    (after - before).map do |klass|
        instance_variable_set("@#{klass.name}", page(klass))
    end
  end

