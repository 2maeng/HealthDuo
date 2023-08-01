<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- SweetAlert2 CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.min.css">

<script>
  window.onload = function() {
    Swal.fire({
      title: '내용을 입력하세요:',
      input: 'textarea',
      showCancelButton: true,
      confirmButtonText: '확인',
      cancelButtonText: '취소',
      showLoaderOnConfirm: true,
      preConfirm: (text) => {
        if (!text) {
          Swal.showValidationMessage('내용을 입력해주세요.');
        }
        return text;
      },
      allowOutsideClick: () => !Swal.isLoading()
    }).then((result) => {
      if (result.isConfirmed) {
        const text = result.value;
        // Do something with the entered text
        // For example, redirect to updateComment.do:
        window.location.href = 'updateComment.do?comment=' + encodeURIComponent(text)+'&commentNum=' + ${commentNum};
      } else if (result.dismiss === Swal.DismissReason.cancel) {
        // Handle cancel action
        window.history.go(-1);
      }
    });
  };
</script>

<!-- SweetAlert2 JS -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.all.min.js"></script>