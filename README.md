

# My Rotate

![theme park carousel picture](https://s3-us-west-2.amazonaws.com/web-dev-readme-photos/cs/carousel.jpg)

## Contents

1. Objective
2. About Rotate
3. Notes
4. Bonus
5. Resources

## Objective

You will be building out Ruby's `#rotate` method. It shouldn't change the array it's called on.

## About Rotate

Ruby's rotate method accepts one optional argument.

```ruby
animals = ["aardvark", "hedgehog"]

animals.my_rotate
#=> ["hedgehog", "aardvark"]

animals
#=> ["aardvark", "hedgehog"]
```

#### Default Behaviour

The rotate method defaults to just shifting every element to the left. The element in the first position becomes the element at the end.

```ruby
animals = ["aardvark", "hedgehog", "panda", "wallaby"]
animals.my_rotate
#=> ["hedgehog", "panda", "wallaby", "aardvark"]
```

#### Behaviour with Argument

##### Postive Argument

If passed a positive argument, it shifts all the elements over arg num of times to the left.

```ruby
animals = ["aardvark", "hedgehog", "panda", "wallaby", "zebra"]
animals.my_rotate(2)
#=> ["panda", "wallaby", "zebra", "aardvark", "hedgehog"]
```

##### Negative Argument

If passed a negative argument, it shifts all the elements over arg num of times to the right.

```ruby
animals = ["aardvark", "hedgehog", "panda", "wallaby", "zebra"]
animals.my_rotate(-2)
#=> ["wallaby", "zebra", "aardvark", "hedgehog", "panda"]
```

## Notes

You may not call on Ruby's `#rotate` method to accomplish this task.

## Bonus

Rotating to one to the left could be pretty easy:

```ruby
odd_numbers = [ 3, 5, 7, 9 ]
odd_numbers.my_rotate(1)
# => [ 5, 7, 9, 3 ]
```
Your steps to accomplish the code above code might look something like this:

```ruby
# new_array = odd_numbers[1..-1]
# => [ 5, 7, 9 ]
# new_array << odd_numbers[0]
# => [ 5, 7, 9, 3 ]
```

Likewise, rotating one to the right could be pretty easy too:

```ruby
odd_numbers = [ 3, 5, 7, 9 ]
odd_numbers.my_rotate(-1)
# => [9, 3, 5, 7]
```
Your steps to accomplish the code above code might look something like this:

```ruby
# new_array = odd_numbers[0..-2]
# => [ 3, 5, 7 ]
# new_array.insert(0, odd_numbers[-1])
# => [9, 3, 5, 7]
```

However, if you want an extra challenge, rotate the array *in place* (don't just chop up an array and add the first element to the end/last element to the beginning).

## Resources

* [Ruby's Rotate Method](http://ruby-doc.org/core-2.2.0/Array.html#method-i-rotate)
