Check your XML files with docker !
==================================

Get the image
-------------

    docker pull vsasyan/xmllint

Check your files
----------------

My file to check (with the XSD file) :

    /local/xml
        annuaire.xml
        annuaire.xsd

Command line :

    sudo docker run -v /local/xml:/xml xmllint vsasyan/xmllint --noout xml/annuaire.xml --schema xml/annuaire.xsd

Expected result :

    xml/annuaire.xml validates

Example files
-------------

Try with the example files in the `xml` folder !
