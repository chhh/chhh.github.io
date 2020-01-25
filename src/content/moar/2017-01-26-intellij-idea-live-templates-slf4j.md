---
categories: []
date: "2017-01-26"
draft: false
image:
  caption: 'Image credit: [**Unsplash**](https://unsplash.com/photos/CpkOjOcXdUY)'
  focal_point: ""
  placement: 2
  preview_only: false
projects: []
summary: ' Configure your own templates for daunting repetitive tasks in IDEA, like
  defining a logger variable each time. After reading this post you''ll be able to
  type `log` press <kbd>TAB</kbd> and get the full logger declaration for _slf4j_.'
tags:
- intellij
title: Intellij IDEA live templates
---

[Intellij IDEA](https://www.jetbrains.com/idea/features/) IDE has a nice feature
of live templates. You type several symbols, press tab (by default) and it
expands the symbols into full expressions. E.g. you can type `fori`, press
<kbd>Tab</kbd> and get a full _for_ loop created for you, or type `iter`, press
<kbd>Tab</kbd> and if you have `iterable`s in scope, you'll be presented with a
choice of available ones to iterate over.

## Example: slf4j logger in each class

It's a super common thing to type at the beginning of each class:

```java
private static final org.slf4j.Logger logger = org.slf4j.LoggerFactory.getLogger(MyClassName.class);
```

pretty tedious even with IDE's help.

Live templates to the rescue, you can define your own one to create the whole
line for you! You

## How to define a live template

- Go to _File_->_Settings_->_Editor_->_Live Templates_.
- In the right panel tree select category _other_.
- Click the _plus_ (+) sign on the top right, select _Live Template_.
- Set
  - Abbreviation: `log`
  - Description: `Inserts private static Logger for slf4j`
  - Template text: `private static final org.slf4j.Logger logger =
    org.slf4j.LoggerFactory.getLogger($CLASS_NAME$.class);$END$`
- Now click the _Edit Variables_ button, we will tell the IDE what
  `$CLASS_NAME$` means here. `$END$` means where to place the cursor after
  template expansion.
  - Name: `CLASS_NAME`
  - Expression: `className()`
  - Default value: leave empty
  - Skip if defined: true (check the checkbox)
- At the very bottom look for text _Applicable in_ with a link _Change_ next to
  it, click it. Select _Java_->_declaration_.  

Congratulations, you're done! Just type `log` and press <kbd>Tab</kbd> anywhere
in the class declaration.
