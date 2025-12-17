# نستخدم صورة Alpine Linux
FROM alpine:latest

# نثبت g++ وأدوات compile
RUN apk add --no-cache g++

# فولدر الشغل
WORKDIR /app

# ننسخ كل الملفات
COPY . .

# نعمل compile للكود
RUN g++ Cproject.cpp -o myapp

# الأمر اللي يتنفذ لما الكونتينر يشتغل
CMD ["./myapp"]
