====== How to Regenerate the Readme file for a Module ======

You have to install xsltprox and XSL files for docbook.

After you update the XML files from 'modules[_k|s]/modname/doc/file.xml', run the command:

<code>
make modules-readme modules=modules[_k|s]/modname
</code>

Examples:

  * regenerate the readme for modules/tm module

<code>
make modules-readme modules=modules/tm
</code>

  * regenerate the readme for modules_k/dispatcher module

<code>
make modules-readme modules=modules_k/dispatcher
</code>