# BƯỚC 1: Lấy một cái "thùng rỗng" đã cài sẵn Node.js
FROM node:18-alpine

# BƯỚC 2: Tạo một thư mục bên trong thùng tên là /app
WORKDIR /app

# BƯỚC 3: Copy file "mục lục" vào trước
COPY package.json .

# BƯỚC 4: (Trong bài này không cần, nhưng về sau sẽ cần)
# RUN npm install

# BƯỚC 5: Copy code (app.js) vào thùng
COPY app.js .

# BƯỚC 6: Báo cho "thùng" biết là nó sẽ chạy ở port 8080
EXPOSE 8080

# BƯỚC 7: Dặn "thùng" khi được bật lên thì chạy lệnh "node app.js"
CMD [ "node", "app.js" ]