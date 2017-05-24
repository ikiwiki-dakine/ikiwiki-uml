LOCALPATH := ~/.ikiwiki/IkiWiki/Plugin/

plugins = plantuml.pm plantuml.jar
local: ${plugins}
	mkdir -p ${LOCALPATH}
	cp ${plugins} ${LOCALPATH}

plantuml.jar:
	curl -L -O http://downloads.sourceforge.net/project/plantuml/plantuml.jar

PlantUML_Language_Reference_Guide.pdf:
	curl -L -O http://plantuml.com/PlantUML_Language_Reference_Guide.pdf

reference: PlantUML_Language_Reference_Guide.pdf
