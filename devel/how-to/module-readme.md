# How to Regenerate the Readme file for a Module

You have to install xsltprox and XSL files for docbook.

After you update the XML files from 'src/modules/modname/doc/file.xml',
run the command:

    make modules-readme modules=src/modules/modname

Examples:

-   regenerate the readme for modules/tm module

<!-- -->

    make modules-readme modules=src/modules/tm
