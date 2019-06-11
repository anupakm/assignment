node {
    def app

    stage('Clone repository') {
        /* repository cloned to  workspace */

        checkout scm
    }

    stage('Build image') {
        /* This builds the actual image; synonymous to
         * docker build on the command line */

        app = docker.build("anupakm/simplilearnproject")
    }

    stage('Test image') {
        /* Test can be done against image.
         * For sample step, dummy commands */

        app.inside {
            sh 'echo "Tests passed"'
        }
    }

    stage('Push image') {
        /* Pushing the image with two tags:
         * First, the incremental build number from Jenkins
         * Second, the 'latest' tag */
        docker.withRegistry('https://registry.hub.docker.com', 'dockerhub') {
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
        }
    }
}
