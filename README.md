Radiant Html Tags Extension
===

About
---

An extension for [Radiant CMS][radiant] by [Benny Degezelle][jomz] that allows you to chain html- and radius-tags.

    <h1><r:title /></h1>

can be written as
    
    <r:h1:title/>

Or

    <ul>
      <r:children:each>
        <li><r:link/></li>
      </r:children:each>
    </ul>

can be written as

    <r:ul:children:each:li:link />


Tested on Radiant 1.0.0.rc2, but should work for older versions

Installation
---
  
    git clone git://github.com/jomz/radiant-html_tags-extension.git vendor/extensions/html_tags


###Available Tags

Any html5 element should be support. See lib/tags.rb for a full list.

[jomz]: http://github.com/jomz
[radiant]: http://radiantcms.org/