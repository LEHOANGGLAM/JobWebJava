<%-- 
    Document   : about
    Created on : Jul 28, 2022, 4:28:13 PM
    Author     : dell
--%>
<%@include file="../../taglib.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="job-post-company pt-120 pb-120">
    <div class="container">
        <div class="row justify-content-between">
            <p>${c.content}</p>
        </div>
    </div>
</div>
<!-- job post company End -->
<!--
<form method="post" action="" id="form-apply-cv" enctype="multipart/form-data">
<a href="../comment/_comment.jsp"></a>
    <input type="hidden" name="_token" value="kUeclEoZMIKoG7ch7whM5jXDH74fSxxeLBPB0QfV">
    <input type="hidden" name="ta_source" value="BoxFeatureJob">
    <input type="hidden" name="jr_i" value="">
    <div class="modal-header ">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
        <h4 class="modal-title bold">Ứng tuyển <span class="text-highlight">Nhân Viên Tư Vấn Khách Hàng</span></h4>

    </div>
</form>-->



<!--
</div>
<div class="modal-body">
<div id="old-apply">
<div class="row">
<div class="col-sm-8"><p><strong>Sử dụng CV đã ứng tuyển</strong></p></div>
<div class="col-sm-4 text-right"><a href="#" class="btn btn-default btn-sm" id="btn-new-apply"><i class="fa fa-pencil"></i> Thay đổi</a></div>
</div>
<div style="margin-top: 8px; border: 1px dashed #ccc; padding: 5px 10px;">
<table>
<tbody><tr>
<th>CV</th>
<td style="padding-left: 5px">: <a href="https://static.topcv.vn/cvs/123c5e187a4da4c518ad226301904386.pdf#toolbar=0&amp;navpanes=0&amp;scrollbar=0" target="blank" class="text-highlight">CV-LeCamHoangLam.pdf <small><i>(Click để xem)</i></small></a></td>
</tr>
<tr>
<th>Họ và tên</th>
<td style="vertical-align: top; padding-left: 5px;">: Lê Cẩm Hoàng Lâm</td>
</tr>
<tr>
<th>Email</th>
<td style="vertical-align: top; padding-left: 5px;">: lelam1384@gmail.com</td>
</tr>
<tr>
<th>Phone</th>
<td style="vertical-align: top; padding-left: 5px;">: 0946646654</td>
</tr>
</tbody></table>
<input type="hidden" name="last_apply_id" value="8646802">
</div>
</div>
<div id="new-apply" style="display: none">
<div id="frm-select-cv-online">
<div class="text-right" style="margin-bottom: 10px">
<a href="#" class="btn-sm btn btn-default btn-old-apply"><i class="fa fa-undo"></i> Dùng CV đã nộp</a>
<a href="javascript:showUploadForm()" class="btn btn-sm btn-default"><i class="fa fa-upload"></i> Tải lên CV từ máy tính</a>
</div>
<div class="row">
<div class="col-xs-6">
<label>Chọn CV online: <span class="italic text-primary text-small"><i class="fa fa-thumbs-o-up"></i> Khuyên dùng</span></label>
<ul class="cv-choosen">
<li class="radio-choose-active">
<input id="apply-cv-8e265be964680df1968d9687b527d987" type="radio" name="cvid" value="8e265be964680df1968d9687b527d987" checked="">
<label for="apply-cv-8e265be964680df1968d9687b527d987"> CV_CN2 <a class="text-highlight" target="_blank" href="https://www.topcv.vn/xem-cv/CQADAwEAAF8GBg9ZCAVSUA1XDlUBBAtTUQMDDwd987">(Xem)</a></label>
</li>
<li class="radio-choose-active">
<input id="apply-cv-ab4b9db40c93fc43355c9e63c4fddeca" type="radio" name="cvid" value="ab4b9db40c93fc43355c9e63c4fddeca">
<label for="apply-cv-ab4b9db40c93fc43355c9e63c4fddeca"> CV <a class="text-highlight" target="_blank" href="https://www.topcv.vn/xem-cv/VAZXBw1TU1BUU1oKA1MGUgQFDVsIXFJXUwYDAAdeca">(Xem)</a></label>
</li>
<li class="radio-choose-active">
<input id="apply-cv-dab74e11eed655f62f33454dc8725610" type="radio" name="cvid" value="dab74e11eed655f62f33454dc8725610">
<label for="apply-cv-dab74e11eed655f62f33454dc8725610"> 2 <a class="text-highlight" target="_blank" href="https://www.topcv.vn/xem-cv/VFVbAQNUVANdBFcOAwFUAVdSAAFWBgdTU1kFAA5610">(Xem)</a></label>
</li>
<li class="radio-choose-active">
<input id="apply-cv-3a5f427b98c045ce78bc39fd4d7858d0" type="radio" name="cvid" value="3a5f427b98c045ce78bc39fd4d7858d0">
<label for="apply-cv-3a5f427b98c045ce78bc39fd4d7858d0"> CV NAM 4 <a class="text-highlight" target="_blank" href="https://www.topcv.vn/xem-cv/VlUBU1cAAAYLXgcGVVNTBgYIUgBSWFNXAwBRWw58d0">(Xem)</a></label>
</li>
</ul>
</div>
<div class="col-xs-6">
<label>Chọn CV upload:</label>
<ul class="cv-choosen">
<li class="radio-choose-active">
<input id="cv-apply-upload-218045" type="radio" name="cvUploadId" value="218045">
<label for="cv-apply-upload-218045"> CV_LeCamHoangLam.pdf <a class="text-highlight" target="_blank" href="https://static.topcv.vn/topcv-cv-uploads/123c5e187a4da4c518ad226301904386.pdf#toolbar=0&amp;navpanes=0&amp;scrollbar=0">(Xem)</a></label>
</li>
</ul>
</div>
</div>
</div>
<div id="frm-upload" style="display: none">
<div class="row form-group">
<div class="col-sm-6 col-xs-12">
<strong class="input-label text-dark-gray">Tải lên CV từ máy tính</strong><br>
<span class="text-gray text-small">File doc, docx, pdf. Tối đa 5MB.</span>
</div>
<div class="col-sm-6 col-xs-12 text-right">
<a href="#" class="btn-sm btn btn-default btn-old-apply"><i class="fa fa-undo"></i> Dùng CV đã nộp</a>
<a href="javascript:showSelectOnlineCVForm()" class="btn-sm btn btn-default"><i class="fa fa-globe"></i> Dùng CV Online</a>
</div>
</div>
<div class="form-group">
<div class="jFiler jFiler-theme-dragdropbox"><input type="file" name="cv_file" id="filer_input" style="display: none; position: absolute; left: -9999px; top: -9999px; z-index: -9999;" accept="doc, docx, pdf"><div class="jFiler-input-dragDrop"><div class="jFiler-input-inner"><div class="jFiler-input-icon"><i class="fa fa-upload"></i></div><a class="btn btn-topcv-primary btn-sm">Chọn file</a></div></div></div>
</div>
<div class="form-group">
<label>Họ và tên<span class="text-danger">*</span> :</label>
<input type="text" value="Lê Cẩm Hoàng Lâm" placeholder="Họ tên hiển thị với Nhà tuyển dụng" name="fullname" class="form-control input-sm" style="font-size: 12px">
<p class="text-small text-danger italic" id="fullnameErrorMessage" style="margin-top: 5px; display: none"></p>
</div>
<div class="row">
<div class="col-xs-6">
<div class="form-group">
<label>Email<span class="text-danger">*</span> :</label>
<input type="text" value="lelam1384@gmail.com" placeholder="Email hiển thị với Nhà tuyển dụng" name="email" class="form-control input-sm" style="font-size: 12px">
</div>
</div>
<div class="col-xs-6">
<div class="form-group">
<label>Số điện thoại<span class="text-danger">*</span> :</label>
<input type="text" value="0946646654" placeholder="Số điện thoại hiển thị với Nhà tuyển dụng" name="phone" class="form-control input-sm" style="font-size: 12px">
</div>
</div>
 <div class="col-xs-12">
<div class="form-group align-center">
<input type="checkbox" name="is_save_cv_upload" class="js-switch" value="0" id="cb-save-cv-upload" data-switchery="true" style="display: none;"><span class="switchery switchery-small switchery-default" style="box-shadow: rgb(223, 223, 223) 0px 0px 0px 0px inset; border-color: rgb(223, 223, 223); background-color: rgb(255, 255, 255); transition: border 0.4s ease 0s, box-shadow 0.4s ease 0s;"><small style="left: 0px; transition: background-color 0.4s ease 0s, left 0.2s ease 0s;"></small></span>
<span style="margin-left:10px">Lưu CV (Dùng để quản lý trong <a target="_blank" class="text-highlight" href="https://www.topcv.vn/quan-ly-cv">Hồ Sơ CV</a> và giúp nhà tuyển dụng tiếp cận bạn)</span>
</div>
</div>
</div>
</div>
<div>
<div class="formInfoUserUpload">
<div class="form-group">
<label>Họ và tên<span class="text-danger">*</span> :</label>
<input type="text" value="Lê Cẩm Hoàng Lâm" placeholder="Họ tên hiển thị với Nhà tuyển dụng" name="fullname" class="form-control input-sm" style="font-size: 12px">
<p class="text-small text-danger italic" id="fullnameErrorMessage" style="margin-top: 5px; display: none"></p>
</div>
<div class="row">
<div class="col-xs-6">
<div class="form-group">
<label>Email<span class="text-danger">*</span> :</label>
<input type="text" value="lelam1384@gmail.com" placeholder="Email hiển thị với Nhà tuyển dụng" name="email" class="form-control input-sm" style="font-size: 12px">
</div>
</div>
<div class="col-xs-6">
<div class="form-group">
<label>Số điện thoại<span class="text-danger">*</span> :</label>
<input type="text" value="0946646654" placeholder="Số điện thoại hiển thị với Nhà tuyển dụng" name="phone" class="form-control input-sm" style="font-size: 12px">
</div>
</div>
</div>
</div>
<label>Thư giới thiệu: </label>
<textarea name="letter" class="form-control" style="font-size: 12px" rows="3" placeholder="Viết giới thiệu ngắn gọn về bản thân (điểm mạnh, điểm yếu) và nêu rõ mong muốn, lý do làm việc tại công ty này. Đây là cách gây ấn tượng với nhà tuyển dụng nếu bạn có chưa có kinh nghiệm làm việc (hoặc CV không tốt)."></textarea>
</div>
</div>
</div>
<div class="modal-footer">
<button type="button" class="btn btn-default btn-theme" data-dismiss="modal">Đóng lại</button>
<button type="submit" class="btn btn-topcv-primary btn-theme" id="btn-apply">Nộp CV</button>
<div class="text-left" style="font-size: 12px; margin-top: 8px; border: 1px dashed #ccc; padding: 5px 10px;">
Lưu ý: <br>
1. Ứng viên nên lựa chọn ứng tuyển bằng CV Online &amp; viết thêm mong muốn tại phần thư giới thiệu để được Nhà tuyển dụng xem CV sớm hơn. <br>
2. Bạn nên thực hiện ứng tuyển khi cảm thấy thông tin công việc và công ty là an toàn và không có các dấu hiệu bất thường. Với vai trò là nền tảng kết nối ứng viên và nhà tuyển dụng, TopCV gợi ý bạn nên ứng tuyển tại các tin từ nhà tuyển dụng đã được xác thực có dấu tích màu xám hoặc màu xanh <br>
3. Để có trải nghiệm tốt nhất, bạn nên sử dụng các trình duyệt phổ biến như Google Chrome hoặc Firefox.
</div>-->