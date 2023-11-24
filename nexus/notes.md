# What is an Artifact Repository?

Storage of build artifacts produced by continuous integration which makes themavailable for automated deployment to different deployment environments
Provides a central location
Artifacts are applications built into a single file
There are different artifact formats: JAR, WAR, ZIP, TAR, etc.

Can store many different artifact types, which is great, because as a company you often produce different types of artifacts
Instead of having differentrepositories for each artifact type - just 1 repository for managing all your different artifact types
## Public vs Private
The choice between private and public repository managers depends on the specific needs and priorities of the organization or individual developers. Private repositories offer enhanced security and control, ideal for proprietary projects, while public repositories promote collaboration and open-source development but may require careful consideration of security implications.

### Feature of Repository manager
- integration with LDAP;
- Flexible and powerful REST API for integration with other tools (useful to integrate it into CI/CD)
- Back-up and Restore;
- Multiformat support;
- Metadata Tagging - labeling and tagging artifacts;
- Cleanup Policies - automatically delete files that match conditions;
- Search functionality - across projects, artifact repos, etc.;
- Users token supported for system user auth.

## Nexus - Artifact repository manager
Has open source and commercial version. Using nexus you can have multiple repositories for different formats or different teams in your company.
***Supported formats in Nexus:***
1.  **Maven (Java):**   `.jar`, `.war`, `.ear`, `.pom`
2.  **npm (Node.js/JavaScript):** `.tgz`, `.tar.gz`
3.  **NuGet (.NET):**  `.nupkg`
4.  **Docker:** `.tar`
5.  **Bower (web):** `.tar.gz`
6.  **Raw** *(Generic repository format that allows you to store any type of file.)***:** Any
7.  **Yum:** `.rpm`
8.  **P2 (Eclipse):** `.zip`
9.  **Apt (Debian):** `.deb`
10.  **PyPI (Python):** `.tar.gz`
11.  **RubyGems (Ruby):** `.gem`

### Repository types & Formats
***Repository types***
1. Proxy - intermediary to another repo.
2. Group - containing a group of repos.
3. Hosted - for hosting company-internal artifacts
Each technology (python, java, docker) hasits artifact type (jar, image), which can be saved in its own artifact repository format.
***Supported formats in Nexus:***
1.  **Maven (Java):**   `.jar`, `.war`, `.ear`, `.pom`
2.  **npm (Node.js/JavaScript):** `.tgz`, `.tar.gz`
3.  **NuGet (.NET):**  `.nupkg`
4.  **Docker:** `.tar`
5.  **Bower (web):** `.tar.gz`
6.  **Raw** *(Generic repository format that allows you to store any type of file.)***:** Any
7.  **Yum:** `.rpm`
8.  **P2 (Eclipse):** `.zip`
9.  **Apt (Debian):** `.deb`
10.  **PyPI (Python):** `.tar.gz`
11.  **RubyGems (Ruby):** `.gem`
## Cleanup Policies & Scheduled Tasks
Cleanup Policies clean up old artifacts to make space. You can define logic like:
 * Delete all artifacts older than 30 days;
 * Delete all artifacts, which haven't beenused/downloaded for more than 10 days;
 * Create individual cleanuppolicy for each repository

Nexus allows you to schedule tasks that will be applied to all or a specific repository on aconfigurable schedule