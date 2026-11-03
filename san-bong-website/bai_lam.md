# BÀI LÀM – HACKATHON 02

- **Mã đề:** 01
- **Họ tên:** Đào Tuấn Đạt
- **Lớp:** HNKS26CNTT3
- **Link repository:** [GitHub](https://github.com/tuandatdzquatroihihi/HNKS26CNTT3_NhapMonCNTT_SS18_LT)
- **Hệ điều hành (Windows/macOS):** Windows

## 4.2. Thao tác máy tính cơ bản bằng CLI

### Các lệnh đã chạy

```shell
pwd
ls -r -Force
mv .\ghi_chu_ban_giao.txt .\docs\
mkdir backup
cp .\data\dat_san_thang_10.xlsx .\backup\
rm -r *.tmp
cd .\logs\
ls -r -Force
cd ..
```

### Kết quả liệt kê toàn bộ dự án (Windows: Get-ChildItem -Recurse -Force; macOS: ls -aR)

```text
Directory: D:\Luyen_Tap\starter-kit\san-bong-website


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----        11/03/2026   1:54 PM                backup
d-----        11/03/2026   1:51 PM                data
d-----        11/03/2026   1:54 PM                docs
d-----        11/03/2026   1:50 PM                evidence
d-----        11/03/2026   1:51 PM                logs
d-----        11/03/2026   1:47 PM                web
-a----        11/03/2026   1:47 PM             76 .env
-a----        11/03/2026   1:56 PM           2608 bai_lam.md


    Directory: D:\Luyen_Tap\starter-kit\san-bong-website\backup


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        11/03/2026   1:47 PM           6074 dat_san_thang_10.xlsx


    Directory: D:\Luyen_Tap\starter-kit\san-bong-website\data


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        11/03/2026   1:47 PM           6074 dat_san_thang_10.xlsx


    Directory: D:\Luyen_Tap\starter-kit\san-bong-website\docs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        11/03/2026   1:47 PM            154 ghi_chu_ban_giao.txt


    Directory: D:\Luyen_Tap\starter-kit\san-bong-website\logs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        11/03/2026   1:47 PM            956 access.log


    Directory: D:\Luyen_Tap\starter-kit\san-bong-website\web


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----        11/03/2026   1:47 PM                images
-a----        11/03/2026   1:47 PM            590 app.js
-a----        11/03/2026   1:47 PM            529 index.html
-a----        11/03/2026   1:47 PM            460 style.css


    Directory: D:\Luyen_Tap\starter-kit\san-bong-website\web\images


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        11/03/2026   1:47 PM           3101 logo-san-bong.png
```

## 4.3. Lọc log truy cập website

### a) Lệnh lọc các dòng status=500

```shell
cat .\logs\access.log | Select-string "status=500" > .\logs\loi_500.txt
```

### 2 dòng đầu tiên trong logs/loi_500.txt

```text
2026-10-28 08:24:34 POST /api/thanh-toan status=500
2026-10-28 08:28:45 POST /api/thanh-toan status=500
```

### b) Lệnh đếm số dòng status=404 và kết quả

```shell
(cat .\logs\access.log | select-string "status=404").count
```

```text
4
```

## 4.4. Chạy script tong_hop (.ps1 hoặc .sh)

### Lệnh chạy (Windows: nếu dùng Phụ lục 2 thì ghi cả 2 lệnh)

```shell
.\tong_hop.ps1
```

### Nội dung file logs/tong_hop.txt

```text
=== BAO CAO SU CO WEBSITE ===

2026-10-28 08:07:39 GET /tin-tuc status=404
2026-10-28 08:13:01 GET /dat-san-cu status=404
2026-10-28 08:34:07 GET /images/san-7.jpg status=404
2026-10-28 08:57:24 GET /khuyen-mai status=404




Count    : 6
Average  :
Sum      :
Maximum  :
Minimum  :
Property :
```

## 4.5. README.md và bảo vệ thông tin bí mật

> README.md, .gitignore và .env.example được chấm trực tiếp trên file ở gốc dự án. Đánh dấu `[x]` vào các mục đã làm để tự kiểm tra.

- [x] README.md: Heading 1, mô tả có **in đậm** và *in nghiêng*, bảng, code block, task list, blockquote
- [x] .gitignore có dòng `.env` (tên file đúng, không có đuôi .txt)
- [x] .env.example có đủ tên biến, giá trị để trống (tên file đúng, không có đuôi .txt)

## 4.6. Kiểm tra trang web bằng DevTools (F12) và báo cáo lỗi

### Bảng lỗi

| STT | Tab DevTools phát hiện lỗi | Tên file hoặc thông báo lỗi | Cách khắc phục |
| --- | --- | --- | --- |
| 1 | Network | .\web\images\logo.png | Chỉnh sửa lại đường dẫn/tên file |
| 2 | Console | Không tìm thấy logo.png và hienThiBangGia chưa định nghĩa | Chỉnh sửa lại đường dẫn/định nghĩa trong VS Code |

> Ảnh chụp màn hình lưu trong thư mục `evidence/` (network.png, console.png).

### Báo cáo lỗi gửi trưởng nhóm

- **Context:** Sửa lỗi trang web GreenField 
- **Expected:** Lỗi được sửa vào sáng ngày hôm sau
- **Actual:** Lỗi chưa được sửa vào chiều 3/11/26 lúc 2:26 PM
- **Log:** GET file://D:/Luyen_Tap/starter-kit/san-bong-website/web/images/logo.png net::ERR_FILE_NOT_FOUND

### Câu tìm kiếm Google

```text
"ERR_FILE_NOT_FOUND" site:stackoverflow.com
```

## 4.7. Excel

> Phần Excel được chấm trực tiếp trên file `data/dat_san_thang_10.xlsx`, không cần ghi vào đây.
