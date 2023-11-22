# Build Tools & Package Manager
  
Build and package manager tools are essential components in software development that help automate the process of building, compiling, and packaging code. Application needs to be deployed on a production server. For that, we want to package application into a single moveable file (artifact), alsocalled "building the code"This is what a build tool or package manager tool does.
## Artifact
**Artifact** - object, include application code and all its dependencies.
**Artifact repository** - its a storage for artifacts, which can be used to deploy it multiple times, or have a backup, etc. (Nexus, JFrog Artifactory, etc.).

Artifact files look different for each programming language. For example, for **Java** its a JAR or WAR file, which includes whole code plus dependencies. **JavaScript's** artifact can be a ZIP or TAR file. 
## Build tools
With a Build Tool you can build the artifact. Each Build Tools have command line tool and commands to execute the tasksInstalls dependenciesCompiles and compresses your code.
For each programming languages there are specific build tool. But, concepts to all of them quite similar.
* **Java**: maven | gradle
 * **JavaScript**: npm | yarn | webpack
* **Python**: pip
* **C/C++**: conan
* **C#**: NuGet
* **Golang**: dep
* **Ruby**: RubyGems

Let's take a look at some of them. "Build" process:
* Install dependencies;
* Compiles and compresses your code.
Software dev needs build tools locally when developing the app. Build tool is used to manage the dependencies of a project. For that, build tools have a dependencies file (Gradle: build.gradle; Maven: pom.xml; npm: package.json). Whenever you need a new dependency, you can add it to the list.

**Maven**

 ||Maven command  | Gradle command |npm command |
|--|--|--|--|
|Compile the Project | `mvn compile`| `gradle build`   |`npm build` |
|Run the test|`mvn test`|`gradle test`| `npm test`|
|Build the Project |`mvn package`|`gradle assemble`|`npm run build` |

### Why should you know these Build Tools as a DevOps engineer?
1. Help developers building the application, because you know where and how it will run on deployment servers.
2. You need to configure the build automation tool or CI/CD Pipeline, like execute tests on the build servers, build and package into Docker Image, run the application on servers.