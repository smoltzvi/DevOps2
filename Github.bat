/* Local_Jenkins
   Purpose: Homework Assignment 2
   Usage:  Practice all concepts
   Date:  June 29, 2022
*/



pipeline {
    agent any

    stages {
        stage('Alpha') {                        //Stage1 of stages block
            steps {                             // Step1 of stage1
                echo '*************Alfa Starting*******************'
                bat 'shakimo.bat'
                echo '**************End Alfa***********************'
            }
        }
        stage('Bravo') {                        // Stage2 of stages block
            steps {                             // Step2 of stage2
                echo '**************Bravo Starting******************'
            }
        }
        stage('Charlie') {
            steps {
                echo '***************Charlie Starting****************'
            }
        }
        stage('Delta') {
            steps {
                echo '***************Delta Starting*******************'
            }
        }
    }
    //
    post {
        //
        always {
            //
            echo "At the Always Point"
            //
            emailext body: 'Test Message', subject: 'Test Subject', to: 'test@example.com'
        }
        //
        success {
            echo "At the Success Point"
        }
        //
        failure {
            echo "At the Failure Point"
        }
    }
    
}
