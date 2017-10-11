# SASS is life

Welcome to this introduction to SASS, where you will learn to love CSS again. [SASS](https://sass-lang.com) (for Synthetically Awesome Stylesheets) is a CSS preprocessor that allows you to do really cool stuff, but for this lesson, we are going to limit ourselves with three main concepts, variables, nestings, and mixins.

## Variables

CSS does implement variables now, although they aren't supported by [all modern browsers](http://caniuse.com/#search=variables). Which means when you want to reuse the same value several times, it's kind of a hassle when your designers comes in and says "hey, here's the new code for that colour, I felt like changing it out of the blue" (blue, hehe).

Now you can define a variable in SASS with `$name: value;`. `value` can be basically any CSS value, such as pixels, numbers, percentage, colours...

Go ahead and try it!

*Assignment:* can you make the height of the two first paragraphs equal to `50px`, using a variable?

@[Variables]({"stubs": ["variables.scss", "variables.html"], "command": "/bin/bash /project/target/run.sh variables"})

## Nesting

When you work on several components, you sometimes have style clashes if you don't encapsulate your styles. Setting CSS properties for `h1` on one component might interfere with other `h1` tags on other components.

SASS allows you to fix that simply by writing classes inside of other classes, making it easier to read.

@[Nesting]({"stubs": ["nesting.scss", "nesting.html"], "command": "/bin/bash /project/target/run.sh nesting"})

## Mixins

See mixins as functions. They can take one or several variables as parameter, and apply style that depends on those variables on the components that require the mixin. Which means you could create compatibility mixins like this:

```CSS
@mixin border-radius($radius) {
  -webkit-border-radius: $radius;
     -moz-border-radius: $radius;
      -ms-border-radius: $radius;
          border-radius: $radius;
}
```

Or use a mixin to set several properties at once when you intend to reuse code several times with different parameters. To include a mixin, use `@include mixin-name(parameter);`

Try it out!

@[Mixins]({"stubs": ["mixins.scss", "mixins.html"], "command": "/bin/bash /project/target/run.sh mixins"})

That's it! you can learn more about SASS on [the official SASS website](https://sass-lang.com/)

Sources for this CodinGame project (including SASS sources) are [here on GitHub](https://github.com/LeonardA-L/SASS-codingame-course)
