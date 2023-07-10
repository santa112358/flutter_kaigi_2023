deploy:
	fvm flutter build web \
                --web-renderer html \
                --dart-define-from-file flavor/production.json \
                --profile