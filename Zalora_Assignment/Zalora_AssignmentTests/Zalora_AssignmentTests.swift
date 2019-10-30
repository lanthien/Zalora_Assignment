//
//  Zalora_AssignmentTests.swift
//  Zalora_AssignmentTests
//
//  Created by Nexle-LanDT on 10/30/19.
//  Copyright © 2019 Nexle-LanDT. All rights reserved.
//

import XCTest
@testable import Zalora_Assignment

class Zalora_AssignmentTests: XCTestCase {
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testSplitMessage() {
        //Test 1
        let test1 = try? Utilities.splitMessage("""
                    Tiếng Việt, còn gọi tiếng Việt Nam[5], tiếng Kinh hay Việt ngữ, là ngôn ngữ của người Việt (dân tộc Kinh) và là ngôn ngữ chính thức tại Việt Nam. Đây là tiếng mẹ đẻ của khoảng 85% dân cư Việt Nam, cùng với hơn 4 triệu Việt kiều. Tiếng Việt còn là ngôn ngữ thứ hai của các dân tộc thiểu số tại Việt Nam. Mặc dù tiếng Việt có một số từ vựng vay mượn từ tiếng Hán và trước đây dùng chữ Nôm – một hệ chữ viết dựa trên chữ Hán – để viết nhưng tiếng Việt được coi là một trong số các ngôn ngữ thuộc ngữ hệ Nam Á có số người nói nhiều nhất (nhiều hơn một số lần so với các ngôn ngữ khác cùng hệ cộng lại). Ngày nay, tiếng Việt dùng bảng chữ cái Latinh, gọi là chữ Quốc ngữ, cùng các dấu thanh để viết.

                Tiếng Việt được chính thức ghi nhận trong Hiến pháp nước Cộng hòa xã hội chủ nghĩa Việt Nam 2013, tại Chương I Điều 5 Mục 3, là ngôn ngữ quốc gia của Việt Nam [6]. Tiếng Việt bao gồm cách phát âm tiếng Việt và chữ Quốc ngữ để viết. Tuy nhiên, hiện chưa có bất kỳ văn bản nào ở cấp nhà nước quy định giọng chuẩn và quốc tự của tiếng Việt [7]. Hiện nay phần lớn các văn bản trong nước được viết theo những "Quy định về chính tả tiếng Việt và về thuật ngữ tiếng Việt" áp dụng cho các sách giáo khoa, báo và văn bản của ngành giáo dục nêu tại Quyết định của Bộ Giáo dục số 240/QĐ ngày 5 tháng 3 năm 1984 [8] do những người thụ hưởng giáo dục đó sau này ra làm việc trong mọi lĩnh vực xã hội.
                """)
        XCTAssertNotNil(test1)
        XCTAssertEqual(test1?.count ?? 0, 66)
        XCTAssertEqual(test1?.joined(separator: "\n") ?? "", """
1/66 Tiếng Việt, còn gọi\n2/66 tiếng Việt Nam[5], tiếng Kinh\n3/66 hay Việt ngữ, là ngôn\n4/66 ngữ của người Việt\n5/66 (dân tộc Kinh) và là ngôn\n6/66 ngữ chính thức tại\n7/66 Việt Nam. Đây là tiếng\n8/66 mẹ đẻ của khoảng 85%\n9/66 dân cư Việt Nam, cùng\n10/66 hơn 4 triệu Việt kiều.\n11/66 với Tiếng Việt còn là\n12/66 ngôn ngữ thứ hai của\n13/66 các dân tộc thiểu số\n14/66 tại Việt Nam. Mặc dù\n15/66 tiếng Việt có một số\n16/66 từ vựng vay mượn từ\n17/66 tiếng Hán và trước\n18/66 đây dùng chữ Nôm –\n19/66 một hệ chữ viết dựa\n20/66 trên chữ Hán – để\n21/66 viết nhưng tiếng Việt\n22/66 được coi là một trong\n23/66 số các ngôn ngữ thuộc\n24/66 ngữ hệ Nam Á có số\n25/66 người nói nhiều nhất\n26/66 (nhiều hơn một số\n27/66 lần so với các ngôn ngữ\n28/66 khác cùng hệ cộng\n29/66 lại). Ngày nay, tiếng Việt\n30/66 dùng bảng chữ cái Latinh,\n31/66 gọi là chữ Quốc ngữ,\n32/66 cùng các dấu thanh để\n33/66 viết.\n\nTiếng Việt\n34/66 được chính thức ghi\n35/66 nhận trong Hiến pháp\n36/66 nước Cộng hòa xã\n37/66 hội chủ nghĩa Việt Nam\n38/66 2013, tại Chương I\n39/66 Điều 5 Mục 3, là ngôn\n40/66 ngữ quốc gia của Việt\n41/66 Nam [6]. Tiếng Việt bao gồm\n42/66 cách phát âm tiếng Việt\n43/66 và chữ Quốc ngữ\n44/66 để viết. Tuy nhiên,\n45/66 hiện chưa có bất kỳ\n46/66 văn bản nào ở cấp\n47/66 nhà nước quy định\n48/66 giọng chuẩn và quốc\n49/66 tự của tiếng Việt [7].\n50/66 Hiện nay phần lớn các\n51/66 văn bản trong nước\n52/66 được viết theo\n53/66 những \"Quy định về\n54/66 chính tả tiếng Việt và\n55/66 về thuật ngữ tiếng\n56/66 Việt\" áp dụng cho các\n57/66 sách giáo khoa, báo và văn\n58/66 bản của ngành giáo dục\n59/66 nêu tại Quyết định\n60/66 của Bộ Giáo dục số\n61/66 240/QĐ ngày 5 tháng 3 năm\n62/66 1984 [8] do những người\n63/66 thụ hưởng giáo dục\n64/66 đó sau này ra làm việc\n65/66 trong mọi lĩnh vực xã\n66/66 hội.
""")
        
        //Test 3
        XCTAssertThrowsError(try Utilities.splitMessage("""
            Tiếng Việt,còngọi tiếng Việt Nam[5], tiếng Kinh hay Việt ngữ, là ngôn ngữ của người Việt (dân tộc Kinh) và là ngôn ngữ chính thức tại Việt Nam. Đây là tiếng mẹ đẻ của khoảng 85% dân cư Việt Nam, cùng với hơn 4 triệu Việt kiều. TiếngViệtcònlàngônngữthứhaicủa các dân tộc thiểu số tại Việt Nam. Mặc dù tiếng Việt có một số từ vựng vay mượn từ tiếng Hán và trước đây dùng chữ Nôm – một hệ chữ viết dựa trên chữ Hán – để viết nhưng tiếng Việt được coi là một trong số các ngôn ngữ thuộc ngữ hệ Nam Á có số người nói nhiều nhất (nhiều hơn một số lần so với các ngôn ngữ khác cùng hệ cộng lại). Ngày nay, tiếng Việt dùng bảng chữ cái Latinh, gọi là chữ Quốc ngữ, cùng các dấu thanh để viết.
        """))
        
        
        //Test 3
        let test3 = try? Utilities.splitMessage("Text is available under the Creative Commons")
        XCTAssertNotNil(test3)
        XCTAssertEqual(test3?.count ?? 0, 1)
        XCTAssertEqual(test3?.joined(separator: "\n") ?? "", "Text is available under the Creative Commons")
    }
}
