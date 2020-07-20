class Business < ApplicationRecord
    belongs_to :business_owner

    @retail_img = "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcR0iRx2b74xgtLAithy7wdJJyQAHkYaTrhGhw&usqp=CAU"
    @hospitality_img = "https://www.google.com/imgres?imgurl=https%3A%2F%2Fwww.clock-software.com%2Fimages%2Fself-service%2Fscene-3.png&imgrefurl=https%3A%2F%2Fwww.clock-software.com%2Fhotel-self-service-app.html&tbnid=rdx8Intlh08s1M&vet=12ahUKEwiw6tnRtNnqAhVY0YUKHYxgDFsQMygUegUIARDLAQ..i&docid=3qIlwEg8-klIFM&w=395&h=279&q=hotel%20check%20in%20cartoon&safe=strict&ved=2ahUKEwiw6tnRtNnqAhVY0YUKHYxgDFsQMygUegUIARDLAQ"
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
