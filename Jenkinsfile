ansiColor('xterm') {
	node {
		def VERSION = "6.9.4"
		stage("Fetch SCM") {
			checkout scm
		}
		stage("Build") {
			sh "docker build -t quay.io/ipfs/js-base:$VERSION ."
		}
		stage("Push") {
			sh "docker push quay.io/ipfs/js-base:$VERSION"
		}
	}
}
