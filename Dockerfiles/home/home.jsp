<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Travel Categories</title>
    <style>
        body {
            height: 200vh;                                                                                                                   
            background-size: cover;                                                                                                          
            background-position: center;                                                                                                     
            background-image:                                                                                                                
            radial-gradient(circle at 50% 35%, #ffffff 0%, #e1f5fe 40%, #81d4fa 70%, #b3e5fc 100%),                                      
            radial-gradient(circle at 10% 10%, #ffffff 0%, #e0f2f1 50%, #b2dfdb 100%),                                                   
            radial-gradient(circle at 90% 10%, #ffffff 0%, #e1f5fe 30%, #81d4fa 80%, #29b6f6 100%);                                      
            background-blend-mode: normal;  
        }

        h1 {
            margin-top: 0px;
   
            background-color: #81d4fa;
            color: #fff;
            padding: 20px 0;
            text-align: center;
            position: fixed;
            top: 0;
            width: 100%;
            z-index: 1000;
            box-shadow: 0 2px 4px #81d4fa;
        }

        ul {
            list-style-type: none;
            padding: 0;
            margin: 50px auto;
            width: 80%;
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
            margin-top: 125px;
        }

        div.category {
            margin-bottom: 20px;
            margin-left: 20px;
            width: 20%; /* 5개씩 배치하고 싶은 경우에는 100% / 5 = 20% */
            display: inline-block;
            vertical-align: top; /* 상단 정렬 */
        }
        li a {
            text-decoration: none;
            color: #333;
            display: block;
            padding: 30px;
            background-color: #fff;
            border-radius: 20px;
            transition: background-color 0.3s ease;
            box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.1);
            font-size: 20px;
            text-align: center;
        }
        li a:hover {
            background-color: #f0f0f0;
        }
        .category-info {
            width: 80%;
            margin: 20px auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 10px;
            background-color: #fff;
            box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.1);
        }
        .category-info h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }
        .category-info p {
            color: #666;
            line-height: 1.6;
        }
        .category-img {
            display: block;
            margin: 20px auto;
            max-width: 100%;
            height: auto;
            border-radius: 10px;
        }
        .category-text {
            flex-grow: 1;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }
        .user-info {
            position: absolute;
            top: 10px;
            right: 20px;
            color: #333;
            background-color: #fff;
            padding: 10px 30px;
            border-radius: 20px;
            box-shadow: 0 2px 4px #333;
            z-index: 1001;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <%-- 사용자 이름이 있는 경우에만 표시 --%>
    <% String userName = (String) session.getAttribute("userName"); %>
    <% if (userName != null && !userName.isEmpty()) { %>
        <div class="user-info">Welcome, <%= userName %>! <a href="http://www.togglia.shop/">Logout</a></div>
    <% } %>

    <h1>Travel Categories</h1>
    <ul>
        <div class="category" style="background-color: #FFB6C1;"><li><a href="http://www.togglia.shop/home/index.jsp?category=중국">중국</a></li></div>
        <div class="category" style="background-color: #FFB6C1;"><li><a href="http://www.togglia.shop/home/index.jsp?category=일본">일본</a></li></div>
        <div class="category" style="background-color: #ADD8E6;"><li><a href="http://www.togglia.shop/home/index.jsp?category=튀르키예">튀르키예</a></li></div>
        <div class="category" style="background-color: #ADD8E6;"><li><a href="http://www.togglia.shop/home/index.jsp?category=영국">영국</a></li></div>
        <div class="category" style="background-color: #FFB6C1;"><li><a href="http://www.togglia.shop/home/index.jsp?category=괌">괌</a></li></div>
        <div class="category" style="background-color: #FFB6C1;"><li><a href="http://www.togglia.shop/home/index.jsp?category=태국">태국</a></li></div>
        <div class="category" style="background-color: #FFB6C1;"><li><a href="http://www.togglia.shop/home/index.jsp?category=베트남">베트남</a></li></div>
        <div class="category" style="background-color: #ADD8E6;"><li><a href="http://www.togglia.shop/home/index.jsp?category=스위스">스위스</a></li></div>
        <div class="category" style="background-color: #ADD8E6;"><li><a href="http://www.togglia.shop/home/index.jsp?category=이탈리아">이탈리아</a></li></div>
        <div class="category" style="background-color: #FFB6C1;"><li><a href="http://www.togglia.shop/home/index.jsp?category=사이판">사이판</a></li></div>
        <div class="category" style="background-color: #FFB6C1;"><li><a href="http://www.togglia.shop/home/index.jsp?category=인도네시아">인도네시아</a></li></div>
        <div class="category" style="background-color: #FFB6C1;"><li><a href="http://www.togglia.shop/home/index.jsp?category=싱가포르">싱가포르</a></li></div>
        <div class="category" style="background-color: #ADD8E6;"><li><a href="http://www.togglia.shop/home/index.jsp?category=프랑스">프랑스</a></li></div>
        <div class="category" style="background-color: #ADD8E6;"><li><a href="http://www.togglia.shop/home/index.jsp?category=독일">독일</a></li></div>
        <div class="category" style="background-color: #FFB6C1;"><li><a href="http://www.togglia.shop/home/index.jsp?category=호주">호주</a></li></div>
        <div class="category" style="background-color: #FFB6C1;"><li><a href="http://www.togglia.shop/home/index.jsp?category=몰디브">몰디브</a></li></div>
        <div class="category" style="background-color: #FFB6C1;"><li><a href="http://www.togglia.shop/home/index.jsp?category=대만">대만</a></li></div>
        <div class="category" style="background-color: #ADD8E6;"><li><a href="http://www.togglia.shop/home/index.jsp?category=체코">체코</a></li></div>
        <div class="category" style="background-color: #ADD8E6;"><li><a href="http://www.togglia.shop/home/index.jsp?category=북유럽">북유럽</a></li></div>
        <div class="category" style="background-color: #FFB6C1;"><li><a href="http://www.togglia.shop/home/index.jsp?category=미국캐나다">미국캐나다</a></li></div>
    </ul>

    <%-- Check if category parameter is present in URL --%>
    <% String category = request.getParameter("category"); %>
    <% if(category != null && !category.isEmpty()) { %>
        <%-- Display detailed information based on the selected category --%>
        <div class="category-info">
        <div class="category-text">
            <h2><%= category %></h2>
            <%-- Switch case to display different information based on category --%>
            <% switch(category) {
                case "중국": %>
                    <img class="category-img" src="https://yielding-cayenne-5fb.notion.site/image/https%3A%2F%2Fprod-files-secure.s3.us-west-2.amazonaws.com%2Fc5fc30ea-83c1-420c-8e90-23db75a503f4%2F3b990727-2d23-46fd-905a-cc12d0f1f635%2FUntitled.png?table=block&id=aecdbac2-87ee-4d88-94c6-852dd5e16469&spaceId=c5fc30ea-83c1-420c-8e90-23db75a503f4&width=580&userId=&cache=v2" alt="Beach"></p>

                    <p>
                        북경/천진 3일 
                        #핵심관광#만리장성#천안문#초특가필살기
                        
                        합리적인 가격으로 북경을 관광 하는 상품으로, 대표적인 필수관광지를 포함해 알찬 구성으로 이루어진 일정을 만나보세요.
                  
                    <% break;
                case "일본": %>
                    <p>오사카/규슈 4일 
                        #관서기행#훼리타고벚꽃구경
                        
                        오사카 대표관광지를 관광하고 오사카 중심에 위치한 호텔 숙박으로 저녁시간까지 알차게 보낼 수 있습니다.
                  
                        <img class="category-img" src="mountain.jpg" alt="Mountain"></p>
                    <% break;
                    case "태국": %>
                    <p>방콕/파타야 5일 
                        #방콕의재발견#5성호텔#타이마사지
                        
                        시내 중심 5성호텔+핫플레이스+이색체험으로, '새로운 방콕'을 발견하고 싶은 분께 추천드립니다.
                  
                        529,000원~
                        <img class="category-img" src="beach.jpg" alt="Beach"></p>
                    <% break;
                    case "베트남": %>
                    <p>
                        다낭/호이안 4~6일 
                        #호이안야경투어#5성호텔#5대특식
                        
                        월드체인 5성급 호텔 숙박과 다낭 여행에서 꼭 방문해야 할 명소와 다양한 특식이 포함되어 있습니다.

                        519,000원~
                        <img class="category-img" src="beach.jpg" alt="Beach"></p>
                    <% break;
                    case "인도네시아": %>
                    <p>
                        발리 5~7일 
                        #짐바란씨푸드#울루와뚜지역#르네상스 #노쇼핑#베네핏
                        
                        아름다운 선셋과 씨푸드로 유명한 짐바란/울루와뚜 지역의 인기 호텔로 구성된 상품입니다.

                        1,589,000원~
                        <img class="category-img" src="beach.jpg" alt="Beach"></p>
                    <% break;
                    case "싱가포르": %>
                    <p>
                        싱가포르 5일
                        #베스트셀러 #전일관광 #완전일주 #NO쇼핑 #NO팁
                        
                        전 일정 싱가포르 숙박으로 구석구석 제대로 싱가포르를 즐길 수 있는 상품입니다.

                        1,403,400원~
                        <img class="category-img" src="beach.jpg" alt="Beach"></p>
                    <% break;
                    case "몰디브": %>
                    <p>
                        몰디브 7일
                        #마디푸시 프라이빗 아일랜드 리조트
                        
                        #라군 추천 신규 럭셔리 리조트 #전 객실 개인풀을 보유한 총 80채의 프라이빗 아일랜드 #플로팅 조식, 익스커션, 스파 등 다양한 포함 사항
                  
                        4,860,000원~
                        <img class="category-img" src="beach.jpg" alt="Beach"></p>
                    <% break;
                    case "대만": %>
                    <p>
                        대만 3~4일
                        #101타워 #영화속명소 #천등날리기
                        
                        영화 속 명소가 포함되어 대만의 감성을 느낄 수 있는 꾸준한 인기의 상품입니다.

                        848,100원~
                        <img class="category-img" src="beach.jpg" alt="Beach"></p>
                    <% break;
                    case "튀르키예": %>
                    <p>
                        튀르키예(터키) 일주 9~10일
                        #프리미엄 #열기구투어 #단독동굴호텔
                        
                        국내선 항공 3회 탑승으로 편안한 장거리이동, 카파도키아 단독 동굴호텔이 포함되어 있습니다.

                        5,501,000원~
                        <img class="category-img" src="beach.jpg" alt="Beach"></p>
                    <% break;
                    case "영국": %>
                    <p>
                        영국 일주 10일
                        #정통일주 #잉글랜드/스코틀랜드/북아일랜드/웨일즈
                        
                        다양한 자연과 문화, 예술로 가득한 잉글랜드, 스코틀랜드, 아일랜드를 모두 만나보는 정통 영국 일주 여행입니다.

                        4,790,000원~
                        <img class="category-img" src="beach.jpg" alt="Beach"></p>
                    <% break;
                    case "스위스": %>
                    <p>
                        스위스 일주 8일
                        #베스트셀러 #알프스여행 
                        
                        알프스를 깊이있고 여유롭게 즐기는 스위스 일주 여행 시내호텔 1박 이상 숙박, 알프스의 명산을 방문하며 진정한 힐링을 즐기는 여행

                        8,790,000원~
                        <img class="category-img" src="beach.jpg" alt="Beach"></p>
                    <% break;
                    case "이탈리아": %>
                    <p>
                        이탈리아 일주 8/9일
                        #여행의 품격
                        
                        여유롭고 깊이있는 일정으로 유네스코 가득한 이탈리아를 관광하는 쉼표in유럽 상품입니다.

                        5,599,000원~
                        <img class="category-img" src="beach.jpg" alt="Beach"></p>
                    <% break;
                    case "프랑스": %>
                    <p>
                        프랑스 일주 7~9일
                        #가성비 여행
                        
                        낭만이 가득한 파리여행, 프랑스를 찾는 관광객이 꼭 찾는 명소 '몽생미쉘'을 방문하는 여행입니다.

                        3,929,000원~
                        <img class="category-img" src="beach.jpg" alt="Beach"></p>
                    <% break;
                    case "독일": %>
                    <p>
                        독일 완전일주 8~10일
      
                        독일의 함부르크에서 베를린을 지나 뮌헨까지! 매력적인 나라 독일을 깊이있게 여행하는 합리적인 가격의 상품입니다.

                        3,679,000원~
                        <img class="category-img" src="beach.jpg" alt="Beach"></p>
                    <% break;
                    case "체코": %>
                    <p>
                        체코 자유여행 9일
                        #프라하 출도착 #에어텔 #항공+호텔
                        
                        낭만과 품격이 가득한 프라하 출도착 자유여행 항공권 + 호텔 1박이 포함되어있는 프라하 자유여행입니다.

                        2,899,000원~
                        <img class="category-img" src="beach.jpg" alt="Beach"></p>
                    <% break;
                    case "북유럽": %>
                    <p>
                        북유럽 3~4국(덴마크/노르웨이/스웨덴/핀란드) 9~10일
                        #베스트셀러
                        
                        북유럽 4개국(덴마크,노르웨이, 스웨덴, 핀란드) 또는 북유럽 3개국(노르웨이, 스웨덴, 핀란드)를 알차게 관광하는 북유럽 베스트셀러 상품입니다

                        5,699,000원~
                        <img class="category-img" src="beach.jpg" alt="Beach"></p>
                    <% break;
                // Add more cases for other categories as needed
                default: %>    
                    <p>No information available for this category.</p>
                    <% break;
            } %>
        </div>
        </div>         
    <% } %>           
</body>                                                                
</html>
