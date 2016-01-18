Check your XML files with docker !
==================================

This project introduces a *debian:jessie* modified image to check xml files with *xmllint*.

Objective : use the Docker Automated Builds tool in a simple utilization.

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

    sudo docker run -v /local/xml:/xml vsasyan/xmllint xmllint --noout xml/annuaire.xml --schema xml/annuaire.xsd

Expected result :

    xml/annuaire.xml validates

Try it yourself!
----------------

Try with the example files in the `xml` folder !

1. Get the image : `docker pull vsasyan/xmllint`
2. Clone the git : `git clone https://github.com/VSasyan/xmllint.git`
3. Go inside the `xml` folder : `cd xmllint/xml`
4. Get the absolute path : `path=$(pwd)`
5. Run the container : `sudo docker run -v $path:/xml vsasyan/xmllint xmllint --noout xml/annuaire.xml --schema xml/annuaire.xsd`
 
#### Expected result

`xml/annuaire.xml validates`
