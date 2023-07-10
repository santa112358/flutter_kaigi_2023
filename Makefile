deploy:
	fvm flutter build web --web-renderer html --dart-define-from-file=flavor/mock.json --profile
	firebase deploy --only hosting
