pipeline{
   agent any
   tools{
       maven '3.8.6'
   }
   stages{
      stage("source"){
          steps{
             git branch: 'master' ,url:'https://github.com/tallahmad047/demotest-main.git'
        }
      }
      stage ('build'){
        steps{
          sh 'mvn clean package'
        }
      }
   }
}