module mmhelloworld.idrisjvmautoffisample.importer.JvmImporter

import IdrisJvm.IO
import IdrisJvm.JvmImport
import Java.Lang
import Java.Util

%access public export
%language TypeProviders

objectMapperClass : String
objectMapperClass = "com/fasterxml/jackson/databind/ObjectMapper"

jsonNodeClass : String
jsonNodeClass = "com/fasterxml/jackson/databind/JsonNode"

integerClass : String
integerClass = "java/lang/Integer"

javaimport "mvn -f ../pom.xml exec:java@jvm-import-idris -Dexec.arguments=" [
    (objectMapperClass, ["<init>", "readTree"]),
    (jsonNodeClass, ["at", "asDouble"]),
    (integerClass, ["parseInt"])
]
