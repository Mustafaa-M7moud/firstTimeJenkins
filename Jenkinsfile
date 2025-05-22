pipeline{
    agent any
    stages{
        stage("build"){
            echo"Docker building Image"
            sh 'docker build -t mostafastudies/pipline2:${env.BUILD_NUMBER}'
        }
        stage("push"){
            echo"docker is pushing Image"
            withCredentials([usernamePassword(credentialsId: 'Docker-cred', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]){
                sh "echo $PASSWORD | docker login -u $USERNAME --password-stdin"
                sh "docker push mostafastudies/pipline2:${env.BUILD_NUMBER}"
            }
        }
    }
}
