LOCALPATH := ~/.ikiwiki/IkiWiki/Plugin/

PLUGINPATH := IkiWiki/Plugin

plugins = ${PLUGINPATH}/plantuml.pm ${PLUGINPATH}/plantuml.jar
local: ${plugins}
	mkdir -p ${LOCALPATH}
	cp ${plugins} ${LOCALPATH}

${PLUGINPATH}/plantuml.jar:
	curl -o $@ -L -O http://downloads.sourceforge.net/project/plantuml/plantuml.jar

PlantUML_Language_Reference_Guide.pdf:
	curl -L -O http://plantuml.com/PlantUML_Language_Reference_Guide.pdf

reference: PlantUML_Language_Reference_Guide.pdf
