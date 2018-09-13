server {
	listen 80;
	listen [::]:80;

	root /home/nick/kotonoha.io/www;
	index index.html;
	server_name kotonoha.io www.kotonoha.io;

	location / {
		# Attempt to serve request as file; fall back to 404.
		try_files $uri $uri/ = 404;
	}
}
