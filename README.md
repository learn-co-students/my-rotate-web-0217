---
tags: logic, cs, monkey patching, todo, custom methods
languages: ruby
resources: 1
---

# My Rotate

![theme park carousel picture](https://s3-us-west-2.amazonaws.com/web-dev-readme-photos/cs/carousel.jpg)

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

## Resources

* [Ruby's Rotate Method](http://ruby-doc.org/core-2.2.0/Array.html#method-i-rotate)
