module Main

import IdrisJvm.IO
import IdrisJvm.JvmImport
import Java.Lang
import Java.Util
import mmhelloworld.idrisjvmautoffisample.importer.JvmImporter

%access public export
%language ElabReflection

main : JVM_IO ()
main = do
  printLn !((integerClass <.!> "parseInt") "23")

  objectMapper <- (objectMapperClass <.!> "<init>()")
  jsonNode <- (objectMapperClass <.!> "readTree(java/lang/String)") objectMapper "{\"coord\": {\"lon\": -0.13, \"lat\": 51.51}}"
  latNode <- (jsonNodeClass <.!> "at(java/lang/String)") jsonNode "/coord/lat"
  lat <- (jsonNodeClass <.!> "asDouble()") latNode
  printLn lat
