# 1. สร้าง stage สำหรับ build
FROM node:18-alpine AS build

WORKDIR /app

# 2. คัดลอกไฟล์ทั้งหมดไปยัง container
COPY . .

# 3. ติดตั้ง dependencies และ build โปรเจกต์
RUN npm install
RUN npm run build

# 4. เตรียม production image
FROM node:18-alpine

WORKDIR /app

# 5. คัดลอกไฟล์ที่จำเป็นจาก stage build
COPY --from=build /app ./

# 6. เปิดพอร์ต (ค่าปกติของ SvelteKit คือ 3000)
EXPOSE 3000

# 7. สั่งรัน SvelteKit
CMD ["node", "build"]
