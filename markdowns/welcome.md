# Part 2 - Flex Container (Flex Direction, Flex Wrap and Flex Flow)

This article is **Part 2** for the series **“Flexbox and CSS Grid”.**

Welcome back, in the previous article we had an Introduction to Flexbox and CSS Grid. Now we will start with flexbox and cover Flex container and its properties, Flex Direction, Flex Wrap and their shorthand Flex Flow.

Using Flexbox starts with creating a flex container, also known as container box. The children of the flex container are flex items whether they are DOM nodes, text nodes, or generated content. Flex Items are nested inside the flex container as per the assigned Flexbox properties. Please note that some of the Flexbox properties apply to the container itself, whereas others are applied to the flex items. You can create a Flex Container by setting up the display property of an element to either `flex` (block-level flex container) or `inline-flex` (inline-level flex container).

> Sometimes we’ll have one flex item, sometimes we’ll have dozens. Sometimes we’ll know how many children a node will have. Sometimes the number of children will not be under our control. We might have a varied number of items in a set-width container. We might know the number of items, but not know the width of the container. We should have robust CSS that can handle our layouts when we don’t know how many flex items we’ll have or how wide the flex container will be (think responsive). There are several properties outside of the new `display`values we can add to the flex container to provide control over layout that enable us to build responsive layouts and responsive widgets.

## Flex Axes

Flex items get's laid out inside a flex container following either the main axis or the cross axis as per the values specified. The main axis of the container is the primary axis on which flex items are laid out. It extends within the main dimension in which the flex items are placed starting on the main-start side and going toward the main-end side of a container. The axis perpendicular to the main axis is the cross axis of the flex container and extends in the cross dimension.

## Flex Lines

Flex items are aligned and laid out through flex lines, an imaginary line which is used to group and align the flex items inside their container. These lines follow the main axis. Please note that a flex container can be either single-line or multi-line, depending on the flex-wrap property which we will learn later below in this article. For now, just understand that a single-line flex container will lay out all of its flex children within a single line even if that would cause its contents to overflow. Whereas, a multi-line flex container will break its flex items into multiple lines, yes similar to how a normal text is broken onto a new line when it gets too wide to fit on the existing line. 

## Writing Modes

Please note that all the above explanation assumes that you are on left-to-right (LTR) writing mode. The flex line would follow the direction of the text which in this case, is a left-to-right mode, aka left to right, top to bottom. But if you will change the text direction using the `direction` property, the direction of the flex line will also change. Moreover, if the writing mode changes, the directions of both the main axis and cross axis will also change. For example, in a Japanese language layout, the main axis is vertical and the cross axis is horizontal. If you are designing for other writing modes except LTR, you should heading out to the official [docs](https://www.w3.org/TR/css-writing-modes-3/) after this tutorial.

## Flex Direction

If you want your layout to go from top to bottom, left to right, right to left, or even bottom to top, you can use flex-direction to control the main axis along which the flex items get laid out. The `flex-direction` CSS property specifies how flex items are placed in the flex container defining the main axis and the direction (normal or reversed). This determines the direction that flex items are laid out in. The direction of the axes is affected by the writing mode and directionality of the text as they will change the direction of the flow. 

```scss
/* The direction text is laid out in a line */
flex-direction: row;

/* Like <row>, but reversed */
flex-direction: row-reverse;

/* The direction in which lines of text are stacked */
flex-direction: column;

/* Like <column>, but reversed */
flex-direction: column-reverse;

/* Global values */
flex-direction: inherit;
flex-direction: initial;
flex-direction: unset;
```

Look at these images below to help you understand more.

**Flex Direction: LTR Mode**

![](https://d2mxuefqeaa7sj.cloudfront.net/s_37B86C808F272807960A97FAE675F28AC7456F61167EC35AF79C4FA08A554165_1506438115693_flex-direction.png)

**Flex Direction: RTL Mode**
It’s important to understand things get reversed when writing direction is reversed.

![](https://d2mxuefqeaa7sj.cloudfront.net/s_37B86C808F272807960A97FAE675F28AC7456F61167EC35AF79C4FA08A554165_1506439483903_flex-direction-RTL.png)

Please note that you should never use `flex-direction` to change the layout for right-to-left languages. Rather, use the `dir` attribute, or the [writing-mode](https://developer.mozilla.org/en-US/docs/Web/CSS/writing-mode) CSS property, which enables switching between horizontal and vertical, to indicate the language direction.

According to [MDN](https://developer.mozilla.org/en-US/docs/Web/CSS/flex-direction), the following values are accepted:

**Flex Direction - Row**

> **This is the initial value.** The flex container's main-axis is defined to be the same as the text direction. The **main-start** and **main-end** points are the same as the content direction.

@[Flex Direction Row]({"stubs": ["flex-dir-row.scss", "flex-dir-row.html"], "command": "/bin/bash /project/target/run.sh flex-dir-row"})

Codepen also [available](https://codepen.io/IamManchanda/pen/LzWYEP).

**Flex Direction - Row Reverse**

> Behaves the same as `row` but the **main-start** and **main-end** points are permuted.

@[Flex Direction Row Reverse]({"stubs": ["flex-dir-row-reverse.scss", "flex-dir-row-reverse.html"], "command": "/bin/bash /project/target/run.sh flex-dir-row-reverse"})

Codepen also [available](https://codepen.io/IamManchanda/pen/GMWRYO)

**Flex Direction - Column**

> The flex container's main-axis is the same as the block-axis. The **main-start** and **main-end** points are the same as the **before**and **after** points of the writing-mode.

Codepen also [available](https://codepen.io/IamManchanda/pen/LzWYXR)

**Flex Direction - Column Reverse**

> Behaves the same as `column` but the **main-start** and **main-end** are permuted.

Codepen also [available](https://codepen.io/IamManchanda/pen/vexYPJ)

## Flex Wrap

The `flex-wrap` property controls whether the flex container is limited to being a single-line container or is allowed to become multiline if needed. When the `flex-wrap` property is set to allow for multiple flex lines, whether the value of `wrap` or `wrap-reverse` is set determines whether any additional lines appear either before or after the original line of flex items. 

By default, no matter how many flex items are there, all the flex items are drawn onto a single line. This is often not what we want. That’s where `flex-wrap` comes into play. The `wrap` and `wrap-reverse` values allow the flex items to wrap onto additional flex lines when the constraints of the parent flex container are reached.

```scss
flex-wrap: nowrap;
flex-wrap: wrap;
flex-wrap: wrap-reverse;

/* Global values */
flex-wrap: inherit;
flex-wrap: initial;
flex-wrap: unset;
```   

![](https://d2mxuefqeaa7sj.cloudfront.net/s_37B86C808F272807960A97FAE675F28AC7456F61167EC35AF79C4FA08A554165_1506450089361_flex-wrap.png)

According to [MDN](https://developer.mozilla.org/en-US/docs/Web/CSS/flex-wrap), the following values are accepted:

**Flex Wrap - No Wrap**

> **This is the initial value.** The flex items are laid out in a single line which may cause the flex container to overflow. The **cross-start** is either equivalent to **start** or **before** depending [flex-direction](https://developer.mozilla.org/en-US/docs/Web/CSS/flex-direction) value.

Codepen also [available](https://codepen.io/IamManchanda/pen/JrWGKW)

**Flex Wrap - Wrap**

> The flex items break into multiple lines. The **cross-start** is either equivalent to **start** or **before** depending `flex-direction` value and the **cross-end** is the opposite of the specified **cross-start**.

Codepen also [available](https://codepen.io/IamManchanda/pen/GMWoWB)

**Flex Wrap - Wrap Reverse**

> Behaves the same as `wrap` but **cross-start** and **cross-end** are permuted.

Codepen also [available](https://codepen.io/IamManchanda/pen/QqpyvX)

## Shorthand - Flex Flow

```scss
flex-flow: <'flex-direction'> <'flex-wrap'>
```

The flex-flow property is a shorthand for setting the [flex-direction](https://tympanus.net/codrops/css_reference/flexbox/#section_flex-direction) and [flex-wrap](https://tympanus.net/codrops/css_reference/flexbox/#section_flex-wrap) properties, which together define the flex container’s main and cross axes. 

```scss
/* flex-flow: <'flex-direction'> */
flex-flow: row;
flex-flow: row-reverse;
flex-flow: column;
flex-flow: column-reverse;

/* flex-flow: <'flex-wrap'> */
flex-flow: nowrap;
flex-flow: wrap;
flex-flow: wrap-reverse;

/* flex-flow: <'flex-direction'> and <'flex-wrap'> */
flex-flow: row nowrap; // The Initial Value
flex-flow: column wrap;
flex-flow: column-reverse wrap-reverse;

/* Global values */
flex-flow: inherit;
flex-flow: initial;
flex-flow: unset;
```

## To be Continued…

Thanks for following along. Next up is **Part 3,** where we will cover **Flex items**.

## References
- https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Flexible_Box_Layout/Using_CSS_flexible_boxes
- https://tympanus.net/codrops/css_reference/flexbox/

