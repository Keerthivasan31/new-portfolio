pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/Keerthivasan31/new-portfolio.git'
            }
        }

        stage('Verify Files') {
            steps {
                bat '''
                    echo Checking files...
                    dir

                    if not exist index.html (
                        echo index.html not found
                        exit /b 1
                    )

                    echo Website files are ready
                '''
            }
        }
    }

    post {
        success {
            echo 'Portfolio project is ready!'
        }

        failure {
            echo 'Pipeline failed!'
        }
    }
}
