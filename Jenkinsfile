pipeline {
    agent any

    stages {
        stage('Building.......') {
            steps {
                echo 'Install Dependencies'
                bat 'python -m venv venv'
                bat 'venv\\Scripts\\pip install -r requirements.txt'
            }
        }
        stage('Testing......') {
            steps {
                echo 'Run Robot Tests'
                bat 'venv\\Scripts\\robot -d reports tests/'
            }
        }
        stage('Archive Reports') {
            steps {
                archiveArtifacts artifacts: 'reports/*.html', fingerprint: true
            }
        }
    }
}
