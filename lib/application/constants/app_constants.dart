class AppConstants {
  static const int pageSize = 10;
  static const int pageSizeAll = 100;

  // map
  static const double mapZoom = 15;
  static const int markerSize = 80;

  static const List<String> statusArr = [
    'Lên kế hoạch',
    'Đang tiến hành',
    'Đang chờ xử lý',
  ];

  static const List<String> customerKind = [
    'Khách hàng cá nhân',
    'Khách hàng tổ chức',
  ];
  static const List<String> customerClass = [
    'Truyền thống',
    'Thương mại điện tử',
    'Quốc tế',
  ];
  static const List<String> addressing = ['Ông', 'Bà'];
  static const List<String> levelsOfCare = [
    'Mới',
    'Chưa liên lạc được',
    'Liên hệ sau',
    'Đã liên hệ',
    'Ngừng chăm sóc',
  ];
  static const List<String> ranked = [
    'Không quan tâm',
    'Có cơ hội',
    'Cần quan tâm',
  ];
  static const List<String> typesOfCommodities = [
    'Tài liệu',
    'Hợp đồng',
    'Mã pin thẻ',
    'Quà tặng',
    'Linh kiện điện tử',
    'Mỹ phầm - TPCN - Thuốc',
    'Cây cảnh',
    'Đồ gia dụng',
    'Xe máy - Xe đạp điện - Thiết bị nông nghiệp khác',
    'Khác',
  ];
  static const List<String> salesChannel = [
    'Quảng cáo FB',
    'Tiktok',
    'Livestream',
    'Website',
    'Telesale',
  ];
  static const List<String> deliveryDirection = [
    'Từng phần',
    'Nội tỉnh',
    'Cận vùng',
  ];
  static const List<String> companySize = [
    'Tự chủ',
    '1-50',
    '5-100',
    '100-200',
    'Trên 200',
  ];
  static const List<String> businessType = [
    'Công ty TNHH 1 thành viên',
    'Công ty TNHH 2 thành viên trở lên',
    'Công ty cổ phần',
    'DN tư nhân',
    'Công ty hợp danh',
  ];
  static const List<String> customerClassification = [
    'Bạc',
    'Vàng',
    'Kim cương',
    'Khác',
  ];
  static const List<String> accountType = [
    'Khách hàng',
    'Nhà đầu tư',
    'Đối tác',
    'Đại lý',
    'Đối thủ',
    'Khác',
  ];
  static const List<String> contactType = [
    'Người liên hệ',
    'Khách hàng cá nhân',
    'Đối tác',
    'Khác',
  ];
  static const List<String> elementableType = [
    'KH hiện hữu',
    'KH tiềm năng',
    'Liên hệ',
    'Cơ hội',
    'Báo giá',
  ];
  static const List<String> status = [
    'Đã hoàn thành',
    'Lên kế hoạch',
    'Đang tiến hành',
    'Đang chờ xử lý',
    'Đang hoàn',
    'Đã huỷ',
  ];
  static const List<String> nghiepvu = [
    'DVBC',
    'Phát hành báo chí',
    'Tài chính bưu chính',
    'Phân phối truyền thống',
  ];
  static const List<String> loaiDichVu = [
    'B - Phát hành báo chí',
    'C - Bưu kiện',
    'D - Bưu phầm không địa chỉ',
    'DHL - Dịch vụ DHL',
    'E - Dịch vụ EMS',
    'ES - Dịch vụ đặc biệt EMS',
    'L - Prime Track & Epacket',
    'M - Dịch vụ KT1',
    'P - Logistic',
    'Q - Dịch vụ',
    'VN Quick Post',
    'R - Bưu phẩm bảo đảm',
    'SPL - Speedlink',
    'T - Bưu phẩm thường',
    'U - Gói nhỏ quốc tế',
    'UPS - Dịch vụ UPS',
  ];
  static const List<String> tinhChat = [
    'Hàng hoá',
    'Tài liệu',
  ];
  static const List<String> thueSuat = [
    'V0',
    'V1-0',
    'V2-5',
    'V3-10',
    'V4-8',
  ];
  static const List<String> maKinhDoanh = [
    '01 - Cung cấp dịch vụ có giá vốn',
    '02 - Cung cấp dịch vụ không có giá vốn',
    '03 - Bán hàng hoá',
    '04 - Bán hàng, dịch vụ hưởng hoa hồng',
    '05 - Cung cấp dịch vụ đại lý hưởng hoa hồng',
  ];
  static const List<String> maKeKhaiThue = [
    'C - Hàng hoá, dịch vụ kê khai thuế',
    'K - Hàng hoá, dịch vụ không chịu thuế',
    'R - Trường hợp ghi nhận doanh thu, hàng hoá, dịch vụ không phải kê khai thuế',
  ];
  static const List<String> nhomLyDoKhongThanhCong = [
    'App',
    'Đang hài lòng vs ĐVVC cũ',
    'Truyền nhận',
    'Đồng bộ trạng thái với PM QLBH',
    'Chất lượng đầu nhận',
    'Chất lượng đầu phát',
    'Giá',
    'Không thiện chí trao đổi',
    'Khách quan khác',
    'Đối soát thanh toán',
    'Thành công',
  ];
  static const List<String> serviceGroup = [
    'Phát hành báo chí',
    'Bưu phẩm không địa chỉ',
    'Bưu phẩm bảo đảm',
    'Bưu kiện',
    'Logistic',
    'EMS',
    'KT1',
  ];
  static const List<String> saleSteps = [
    'Thất bại',
    'Tìm hiểu nhu cầu',
    'Phân tích nhu cầu',
    'Tham khảo giá',
    'Đề xuất',
    'Báo giá',
    'Thương lượng đàm phán',
    'Thành công',
  ];
  static const List<String> successRate = [
    '0%',
    '10%',
    '30%',
    '40%',
    '65%',
    '80%',
    '100%',
  ];
  static const List<String> quoteStatus = [
    'Tạo nháp',
    'Đã gửi khách hàng',
    'Khách hàng cân nhắc',
    'Khách hàng chấp nhận',
    'Khách hàng từ chối',
  ];
  static const List<String> result = [
    'Thành công',
    'Thất bại',
  ];
  static const List<String> customerRequirement = [
    'Yêu cầu về giá cước',
    'Yêu cầu về thời gian toán trình',
    'Yêu cầu về thu gom',
    'Yêu cầu về khai thác',
    'Yêu cầu về vận chuyển',
    'Yêu cầu về phát',
    'Yêu cầu về thanh toán tiền COD',
    'Yêu cầu về lưu trữ hàng hoá',
    'Yêu cầu về tỉ lệ chuyển hoàn',
    'Yêu cầu và đặc thù khác',
  ];
  static const List<String> customerType = [
    'Khách hàng thường',
    'KHL',
    'Cộng tác viên',
    'Đại lý',
    'KHL - Sản xuất',
    'KHL - Ngân hàng',
    'KHL - HCC',
    'KHL - COD',
    'Hạch toán phụ thuộc',
    'Sàn TMĐT',
  ];
}
