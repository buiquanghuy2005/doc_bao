import '../models/article.dart';

List<Article> articles = [
  Article(
    id: 1,
    title: 'Tin công nghệ hôm nay',
    description: 'Google ra mắt sản phẩm mới...',
    content:
        '''Google vừa công bố hàng loạt cải tiến lớn trong lĩnh vực trí tuệ nhân tạo (AI) và công cụ tìm kiếm của mình. Sản phẩm mới nhất — một trợ lý ảo được tích hợp trực tiếp trong Google Search — có khả năng hiểu ngữ cảnh sâu hơn và đưa ra câu trả lời chi tiết, thay vì chỉ hiển thị danh sách kết quả như trước đây.

Theo các chuyên gia, sự ra mắt này đánh dấu bước tiến quan trọng trong việc cá nhân hóa trải nghiệm người dùng. Người dùng có thể trò chuyện trực tiếp với công cụ tìm kiếm như đang nói chuyện với một con người thật. Ngoài ra, Google cũng cam kết tăng cường tính bảo mật dữ liệu, giúp người dùng kiểm soát thông tin cá nhân tốt hơn.

Nhiều người kỳ vọng rằng công nghệ mới này sẽ mở ra kỷ nguyên tìm kiếm thông minh hơn, nhanh hơn và thân thiện hơn trong tương lai.''',
    imageUrl: 'images/news1.jpg',
  ),
  Article(
    id: 2,
    title: 'Tin thể thao',
    description: 'Messi lập cú đúp giúp Argentina chiến thắng...',
    content:
        '''Trong trận giao hữu quốc tế diễn ra vào tối qua, Lionel Messi tiếp tục thể hiện phong độ đỉnh cao khi ghi liền hai bàn thắng giúp Argentina đánh bại đối thủ với tỷ số 3-1. Dù đã ở tuổi 38, anh vẫn cho thấy khả năng di chuyển thông minh, kỹ thuật tinh tế và khả năng dứt điểm chính xác đáng kinh ngạc.

Sau trận đấu, HLV trưởng Argentina ca ngợi Messi là “biểu tượng của tinh thần chiến thắng” và khẳng định đội bóng vẫn đang xây dựng lối chơi xoay quanh anh. Người hâm mộ trên khắp thế giới đã bày tỏ sự ngưỡng mộ dành cho màn trình diễn này, coi đó là minh chứng cho đẳng cấp không tuổi của siêu sao người Argentina.

Với kết quả này, Argentina tiếp tục duy trì chuỗi trận bất bại ấn tượng, củng cố vị thế của mình trên bảng xếp hạng FIFA.''',
    imageUrl: 'images/news2.jpg',
  ),
  Article(
    id: 3,
    title: 'Tin thế giới',
    description: 'Hội nghị thượng đỉnh G7 bàn về kinh tế toàn cầu...',
    content:
        '''Hội nghị thượng đỉnh G7 năm nay diễn ra tại Tokyo, Nhật Bản, quy tụ các nhà lãnh đạo hàng đầu thế giới. Trọng tâm của cuộc họp là thảo luận các biện pháp ổn định nền kinh tế toàn cầu trong bối cảnh lạm phát tăng cao và xung đột địa chính trị vẫn tiếp diễn.

Ngoài vấn đề kinh tế, G7 cũng tập trung bàn về biến đổi khí hậu, năng lượng sạch và vai trò của trí tuệ nhân tạo trong sản xuất. Các nước thành viên đã thống nhất tăng cường hợp tác nhằm giảm phát thải carbon và đầu tư mạnh vào công nghệ xanh.

Theo giới quan sát, những cam kết được đưa ra tại hội nghị lần này có thể định hình hướng đi của nền kinh tế thế giới trong thập kỷ tới.''',
    imageUrl: 'images/news3.jpg',
  ),
  Article(
    id: 4,
    title: 'Tin giải trí',
    description: 'Bộ phim mới của Marvel đạt doanh thu kỷ lục...',
    content:
        '''Bộ phim mới nhất của vũ trụ điện ảnh Marvel đã chính thức phá vỡ nhiều kỷ lục doanh thu phòng vé chỉ sau 3 ngày công chiếu. Với kỹ xảo hoành tráng, cốt truyện lôi cuốn và dàn diễn viên nổi tiếng, tác phẩm này nhanh chóng trở thành hiện tượng toàn cầu.

Các rạp chiếu phim trên khắp thế giới ghi nhận lượng khán giả tăng đột biến. Nhiều người hâm mộ đánh giá đây là “bộ phim Marvel xuất sắc nhất trong 5 năm gần đây”. Trên các diễn đàn mạng xã hội, hàng triệu bài viết và bình luận tích cực xuất hiện chỉ trong vài giờ sau khi phim ra mắt.

Các chuyên gia dự đoán doanh thu toàn cầu của phim có thể vượt mốc 1 tỷ USD trong vài tuần tới, một con số ấn tượng ngay cả với chuẩn Hollywood.''',
    imageUrl: 'images/news4.jpg',
  ),
  Article(
    id: 5,
    title: 'Tin giáo dục',
    description: 'Bộ GD&ĐT công bố thay đổi trong kỳ thi tốt nghiệp...',
    content:
        '''Bộ Giáo dục và Đào tạo vừa công bố những điều chỉnh quan trọng trong kỳ thi tốt nghiệp THPT năm nay. Theo đó, ngoài các môn bắt buộc, học sinh sẽ có thêm phần thi đánh giá năng lực tổng hợp để phản ánh toàn diện hơn khả năng của các em.

Hệ thống chấm thi cũng được cải tiến nhằm đảm bảo tính minh bạch, công bằng và giảm thiểu sai sót. Bộ cho biết, việc thay đổi này hướng tới mục tiêu giúp học sinh có tư duy sáng tạo hơn thay vì chỉ học thuộc lòng.

Giới chuyên môn nhận định đây là bước đi đúng hướng, phù hợp với xu thế đổi mới giáo dục hiện nay, khi chú trọng phát triển kỹ năng tư duy và giải quyết vấn đề.''',
    imageUrl: 'images/news5.jpg',
  ),
  Article(
    id: 6,
    title: 'Tin khoa học',
    description: 'Các nhà khoa học phát hiện hành tinh mới có thể ở được...',
    content:
        '''Một nhóm nhà khoa học NASA vừa phát hiện ra hành tinh mới mang tên Kepler-452b, nằm cách Trái Đất khoảng 1.400 năm ánh sáng. Điều đặc biệt là hành tinh này có điều kiện gần như tương đồng với Trái Đất, bao gồm khí quyển, nhiệt độ và khả năng tồn tại nước dạng lỏng.

Các nhà nghiên cứu cho rằng Kepler-452b có thể là một ứng viên tiềm năng cho sự sống ngoài hành tinh. Dù còn cần thêm nhiều nghiên cứu, nhưng phát hiện này mở ra hy vọng lớn cho công cuộc tìm kiếm sự sống trong vũ trụ.

Hành tinh này quay quanh một ngôi sao tương tự Mặt Trời, nằm trong “vùng có thể sinh sống”, nơi nhiệt độ đủ ôn hòa để duy trì sự sống sinh học.''',
    imageUrl: 'images/news6.jpg',
  ),
  Article(
    id: 7,
    title: 'Tin kinh tế',
    description: 'Giá vàng tiếp tục tăng mạnh trong tuần qua...',
    content:
        '''Giá vàng thế giới tiếp tục tăng mạnh trong tuần qua, đạt mức cao nhất trong vòng 12 tháng. Nguyên nhân được cho là do bất ổn địa chính trị và lãi suất toàn cầu có xu hướng giảm, khiến nhà đầu tư chuyển sang tài sản an toàn như vàng.

Tại Việt Nam, giá vàng trong nước cũng tăng theo, vượt ngưỡng 80 triệu đồng/lượng. Các chuyên gia khuyến cáo người dân nên thận trọng, vì thị trường có thể điều chỉnh giảm khi kinh tế ổn định trở lại.

Tuy nhiên, về lâu dài, vàng vẫn được xem là kênh đầu tư an toàn, đặc biệt trong bối cảnh lạm phát có nguy cơ tăng trở lại.''',
    imageUrl: 'images/news7.jpg',
  ),
  Article(
    id: 8,
    title: 'Tin sức khỏe',
    description: 'Tổ chức Y tế Thế giới cảnh báo dịch cúm lan rộng...',
    content:
        '''Tổ chức Y tế Thế giới (WHO) vừa phát đi cảnh báo về đợt bùng phát dịch cúm mùa lan rộng ở nhiều khu vực trên thế giới. Số ca mắc tăng nhanh tại châu Âu và châu Á, khiến nhiều bệnh viện rơi vào tình trạng quá tải.

Các chuyên gia y tế khuyến nghị người dân nên tiêm phòng đầy đủ, rửa tay thường xuyên và đeo khẩu trang tại nơi đông người. Ngoài ra, việc giữ ấm cơ thể và tăng cường dinh dưỡng cũng giúp nâng cao sức đề kháng.

WHO nhấn mạnh rằng nếu không kiểm soát kịp thời, dịch cúm năm nay có thể trở thành một trong những đợt nghiêm trọng nhất trong thập kỷ qua.''',
    imageUrl: 'images/news8.jpg',
  ),
  Article(
    id: 9,
    title: 'Tin du lịch',
    description: 'Việt Nam lọt top 10 điểm đến hấp dẫn nhất châu Á...',
    content:
        '''Theo tạp chí du lịch nổi tiếng Lonely Planet, Việt Nam vừa được bình chọn là một trong 10 điểm đến hấp dẫn nhất châu Á năm nay. Báo cáo đánh giá cao sự kết hợp hài hòa giữa văn hóa, thiên nhiên và ẩm thực đặc sắc của đất nước hình chữ S.

Các điểm đến như Hà Nội, Hội An, Hạ Long và Phú Quốc được xếp vào nhóm địa điểm “phải đến một lần trong đời”. Đặc biệt, ẩm thực đường phố của Việt Nam nhận được nhiều lời khen ngợi từ du khách quốc tế.

Ngành du lịch Việt Nam kỳ vọng danh hiệu này sẽ giúp thu hút thêm hàng triệu lượt khách quốc tế, góp phần phục hồi mạnh mẽ sau đại dịch.''',
    imageUrl: 'images/news9.jpg',
  ),
  Article(
    id: 10,
    title: 'Tin môi trường',
    description: 'Ô nhiễm không khí tại Hà Nội giảm đáng kể...',
    content:
        '''Theo báo cáo mới nhất từ Sở Tài nguyên và Môi trường Hà Nội, chất lượng không khí tại thủ đô đã cải thiện đáng kể trong quý vừa qua. Chỉ số bụi mịn PM2.5 giảm hơn 30% so với cùng kỳ năm trước nhờ các chính sách hạn chế xe cá nhân và tăng diện tích cây xanh.

Các dự án giao thông công cộng như đường sắt đô thị và xe buýt điện cũng góp phần giảm khí thải. Nhiều chuyên gia đánh giá đây là tín hiệu tích cực, nhưng cần tiếp tục duy trì để đạt được mục tiêu phát triển bền vững.

Chính quyền thành phố cho biết sẽ đẩy mạnh các chương trình tuyên truyền và áp dụng công nghệ giám sát môi trường hiện đại hơn.''',
    imageUrl: 'images/news10.jpg',
  ),
  Article(
    id: 11,
    title: 'Tin công nghệ',
    description: 'Apple chuẩn bị ra mắt iPhone 17 với tính năng đột phá...',
    content:
        '''Theo các nguồn tin rò rỉ, Apple đang chuẩn bị cho ra mắt iPhone 17 với hàng loạt tính năng đột phá, trong đó nổi bật nhất là công nghệ pin graphene cho phép tăng tuổi thọ pin lên gấp đôi so với thế hệ trước.

Ngoài ra, iPhone 17 dự kiến sẽ có thiết kế viền siêu mỏng, camera ẩn dưới màn hình và chip xử lý thế hệ mới mạnh mẽ hơn 40%. Apple cũng tập trung vào cải thiện trải nghiệm AI, cho phép Siri hoạt động thông minh và tự nhiên hơn.

Giới công nghệ nhận định rằng iPhone 17 sẽ tiếp tục củng cố vị thế dẫn đầu của Apple trong ngành công nghiệp smartphone toàn cầu.''',
    imageUrl: 'images/news11.jpg',
  ),
  Article(
    id: 12,
    title: 'Tin thể thao quốc tế',
    description:
        'Real Madrid giành chiến thắng nghẹt thở tại Champions League...',
    content:
        '''Real Madrid vừa có một trận đấu nghẹt thở trước đối thủ mạnh tại tứ kết Champions League. Bàn thắng quyết định ở phút bù giờ giúp đội bóng hoàng gia Tây Ban Nha giành vé vào bán kết trong sự vỡ òa của người hâm mộ.

Trận đấu được đánh giá là một trong những màn trình diễn ấn tượng nhất của Real trong mùa giải năm nay, khi họ thể hiện bản lĩnh và kinh nghiệm trong những phút cuối. HLV Ancelotti khẳng định đội bóng của ông luôn chiến đấu đến giây phút cuối cùng.

Với chiến thắng này, Real Madrid tiếp tục hành trình chinh phục chiếc cúp danh giá lần thứ 15 trong lịch sử.''',
    imageUrl: 'images/news12.jpg',
  ),
  Article(
    id: 13,
    title: 'Tin văn hóa',
    description: 'Lễ hội Ánh sáng diễn ra rực rỡ tại Đà Nẵng...',
    content:
        '''Lễ hội Ánh sáng quốc tế tại Đà Nẵng đã chính thức khai mạc với hàng nghìn du khách tham dự. Sự kiện kéo dài 5 ngày này mang đến cho khán giả những màn trình diễn ánh sáng 3D mapping và pháo hoa nghệ thuật đặc sắc.

Không gian ven sông Hàn trở nên lung linh với hàng trăm tác phẩm nghệ thuật ánh sáng được trưng bày. Du khách cũng được thưởng thức các chương trình âm nhạc, ẩm thực và nghệ thuật đường phố đặc sắc.

Sự kiện không chỉ quảng bá hình ảnh Đà Nẵng năng động, sáng tạo mà còn góp phần thúc đẩy du lịch nội địa và quốc tế.''',
    imageUrl: 'images/news13.jpg',
  ),
  Article(
    id: 14,
    title: 'Tin công nghệ AI',
    description: 'OpenAI giới thiệu mô hình GPT-5 với khả năng vượt trội...',
    content:
        '''OpenAI vừa chính thức giới thiệu mô hình ngôn ngữ mới GPT-5, được xem là bước tiến lớn nhất kể từ khi ChatGPT ra đời. GPT-5 có khả năng hiểu ngữ cảnh sâu hơn, tạo nội dung tự nhiên và chính xác hơn nhiều so với thế hệ trước.

Theo thông tin từ buổi ra mắt, GPT-5 có thể xử lý đa phương thức — hiểu và phản hồi không chỉ văn bản mà còn hình ảnh, âm thanh và video. Mô hình này cũng có khả năng tùy chỉnh theo phong cách người dùng, mang đến trải nghiệm cá nhân hóa cao.

Các chuyên gia đánh giá GPT-5 có thể mở ra kỷ nguyên mới trong giao tiếp giữa con người và máy tính, giúp AI trở thành công cụ hỗ trợ đắc lực trong học tập, sáng tạo và nghiên cứu.''',
    imageUrl: 'images/news14.jpg',
  ),
];
