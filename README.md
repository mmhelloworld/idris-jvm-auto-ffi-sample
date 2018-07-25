# Idris JVM Automated FFI Example
An example project to show how to import Java libraries in Idris without manually
defining FFI. This example demonstrates using Java's Jackson library in Idris.
The project has two maven modules:
* JVM importer module

    This module declares the foreign imports (classes and methods from Jackson library) and it has
    Jackson as a maven dependency.
* Main module

    This modules uses the imported methods.

# Build
`mvn install`

# Run
`java -cp idris-jvm-auto-ffi-sample-main/target/idris-jvm-auto-ffi-sample-main-1.0-SNAPSHOT.jar:${IDRIS_JVM_HOME}/idris-jvm-runtime.jar main.Main`
