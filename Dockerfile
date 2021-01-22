# command to run: docker run --name vue-app -d -p 8085:80 vue-app-image
# open: localhost:8085 in browser

FROM nginx
COPY dist /usr/share/nginx/html