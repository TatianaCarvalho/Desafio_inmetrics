pipeline {
    agent {
        docker {
            image 'ruby'
            args '--link selenium-server'
        }
    }
    stages {
        stage('Preparation') {
            steps {
                sh "bundle install"
            }
        }
        stage("Run Tests") {
            steps {
                script {
                    try {
                        sh "cucumber -p ci"
                    } finally {
                        cucumber fileIncludePattern: '**/*.json', jsonReportDirectory: 'log', sortingMethod: 'ALPHABETICAL'
                    }
                } 
            }
        }
    }

}
