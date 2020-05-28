====== How to Regenerate the Readme file for a Module ======

You have to install xsltprox and XSL files for docbook.

After you update the XML files from 'src/modules/modname/doc/file.xml', run the command:

<code>
make modules-readme modules=src/modules/modname
</code>

Examples:

  * regenerate the readme for modules/tm module

<code>
make modules-readme modules=src/modules/tm
</code>