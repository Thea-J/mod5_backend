class Business < ApplicationRecord
    belongs_to :business_owner

    @retail_img = "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcR0iRx2b74xgtLAithy7wdJJyQAHkYaTrhGhw&usqp=CAU"
    @hospitality_img = "https://www.google.com/imgres?imgurl=https%3A%2F%2Fwww.epicentrofestival.com%2Fwp-content%2Fuploads%2F2020%2F02%2Fepicentrofestival-emoji-hyatt-hotel-hospitality-industry-gastronomy-leader-cartoon-i3a5xynjol-720x720.jpg&imgrefurl=https%3A%2F%2Fwww.epicentrofestival.com%2F394502c8-epicentrofestival-emoji-hyatt-hotel-hospitality-industry-gastronomy-leader-cartoon-i3a5x.html&tbnid=FhPbuT1X5aIUXM&vet=12ahUKEwiakNGv0t_qAhVMNRoKHeT6DsIQMyg5egQIARA1..i&docid=J-jSOEaiKn-YDM&w=720&h=720&q=hospitality%20cartoon&hl=en-GB&ved=2ahUKEwiakNGv0t_qAhVMNRoKHeT6DsIQMyg5egQIARA1"
    @food_drinks_img = "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ2jUfh-jnXeqScQnDPLQreBm6v2Z5eZ9qBqA&usqp=CAU"
    @it_img = "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTyzR-tMDcfCwJQc9lfrwa9zpsEYoON4LnpBw&usqp=CAU"
    @beauty_img ="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSVENQedJgrVxRlstQDhQaCJORxA_l43gTKeQ&usqp=CAU"
    @hair_care_img = "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSC35AL-9nBN8PS8F5CXxHymepU9Au7uBstOw&usqp=CAU"
    @wellness_img = "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcR-ZfHwiGbYnxl7Rn_EYMaZFRDgcmhbuRTnGw&usqp=CAU"
    @artist_img = "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTthSB7yTIaETJZiNrxg9FwEFV3Ldanb_uGvw&usqp=CAU"

    def self.sectors_obj
    business_sectors = [{"Retail": @retail_img}, {"Hospitality": @hospitality_img}, {"Food & Beverage": @food_drinks_img}, {"I.T.": @it_img}, {"Beauty": @beauty_img}, {"Hair": @hair_care_img}, {"Wellness": @wellness_img}, {"Art": @artist_img}]
    end
end
