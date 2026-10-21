USE QuanLySinhVien;

-- 1. Hiển thị số lượng sinh viên ở từng nơi
SELECT Address, COUNT(StudentId) AS 'Số lượng học viên'
FROM Student
GROUP BY Address;

-- 2. Tính điểm trung bình các môn học của mỗi học viên
SELECT S.StudentId, S.StudentName, AVG(Mark) AS 'Điểm trung bình'
FROM Student S 
JOIN Mark M ON S.StudentId = M.StudentId
GROUP BY S.StudentId, S.StudentName;

-- 3. Hiển thị những bạn học viên có điểm trung bình các môn học lớn hơn 15
SELECT S.StudentId, S.StudentName, AVG(Mark) AS 'Điểm trung bình'
FROM Student S 
JOIN Mark M ON S.StudentId = M.StudentId
GROUP BY S.StudentId, S.StudentName
HAVING AVG(Mark) > 15;

-- 4. Hiển thị thông tin các học viên có điểm trung bình lớn nhất
SELECT S.StudentId, S.StudentName, AVG(Mark) AS 'Điểm trung bình'
FROM Student S 
JOIN Mark M ON S.StudentId = M.StudentId
GROUP BY S.StudentId, S.StudentName
HAVING AVG(Mark) >= ALL (
    SELECT AVG(Mark) 
    FROM Mark 
    GROUP BY StudentId
);
```[cite: 28, 29, 30]

---

### **CÁC BƯỚC THỰC HIỆN VÀ NỘP BÀI**[cite: 30]

1. **Chạy trong MySQL Workbench:**
   * Mở MySQL Workbench, tạo một tab query mới (`Ctrl + T`)[cite: 29].
   * Dán toàn bộ mã lệnh ở trên vào và bấm biểu tượng **Tia sét** ($\text{\bfseries\lightning}$) để thực thi[cite: 29].
2. **Lưu file SQL:**
   * Nhấn **`Ctrl + S`**, đặt tên tệp là `student_management_group_by.sql`[cite: 30].
3. **Đẩy bài lên GitHub và nộp link:**
   * Truy cập **[github.com](https://github.com)** $\rightarrow$ Tạo Repository mới tên là `student-management-group-by`[cite: 30].
   * Upload file `student_management_group_by.sql` vừa tạo lên và bấm **Commit changes**[cite: 30].
   * Sao chép đường dẫn (URL) Repository GitHub, dán vào ô **`Link: Nhập đường dẫn (URL)...`** trên trang bài tập và nhấn **`Nộp bài`** màu xanh[cite: 30]!