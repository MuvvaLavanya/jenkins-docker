pipeline {

agent any


tools {

maven "MavenTool"

}


stages {


stage("Build Modules & Build Docker Images") {

steps {

script {

// def modules = findFiles(glob: '**/pom.xml')

def modules = ['GymMicroservice', 'GymReportMicroservice','NotificationMicroservice','GymAuthenticationService-1','EurekaServer','GatewayServer','GymCommons']

for (def module in modules) {

dir("${module}") {

echo "Building ${module}..."

bat "mvn clean install"

}

}

}

}

}



def findFiles(pomContent) {

def pom = new XmlSlurper().parseText(pomContent)

return pom.modules.module.collect { it.text() }

}