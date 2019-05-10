---
name: outputElement
title: Dynamic elements
description: |-
  An application may require dynamic content. This content may be quite simple.
  The content could also be quite variable. These tools are an alternative to
  the standard `output` related `render*()` functions.
parameters:
- name: id
  description: A character string specifying a reactive id.
- name: '...'
  description: |-
    Additional named arguments passed as HTML attributes to the parent
    element.
- name: session
  description: A reactive context, defaults to [getDefaultReactiveDomain()](getdefaultreactivedomain.html).
details: |-
  These functions are experimental and are subject to change. Additionally,
  they may be moved from this package entirely.
family: rendering
keywords: internal
export: ''
rdname: outputElement
sections: []
layout: doc
---