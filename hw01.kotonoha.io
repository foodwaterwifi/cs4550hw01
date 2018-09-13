server {
	listen 80;
	listen [::]:80;

	root /home/nick/kotonoha.io/hw01;
	index index.html;
	server_name hw01.kotonoha.io;

	location / {
		# Attempt to serve request as file; fall back to 404.
		try_files $uri $uri/ = 404;
	}
}
