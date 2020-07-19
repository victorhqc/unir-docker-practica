# Se utiliza como base, la imagen oficial para Node.js, la cual ya contiene instalado Node.js,
# npm y esta se basa a su vez en una imagen de Ubuntu.
FROM node:12.18.2

# Se indica la estructura de archivos que tendrá el contenedor. Esto puede ser cualquier cosa, yo
# elegí simplemente un directorio llamado "codigo"
WORKDIR /codigo

ENV PORT 3000

COPY package.json /codigo/package.json

RUN npm install

COPY ./src /codigo

CMD ["npm", "start"]