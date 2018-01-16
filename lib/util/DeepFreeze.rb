def deep_freeze(objects)
  objects.map! { |object| object.freeze }
  objects.freeze
end
