class Business < ApplicationRecord
    belongs_to :business_owner

    @retail_img = "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcR0iRx2b74xgtLAithy7wdJJyQAHkYaTrhGhw&usqp=CAU"
    @hospitality_img = "https://image.freepik.com/free-vector/hotel-building-isolated-city-street-vector-illustration-flat-cartoon_101884-680.jpg"
    @food_drinks_img = "https://previews.123rf.com/images/volmon/volmon1703/volmon170300041/73487081-african-men-smiling-chef-black-guy-face-avatar-with-smile-chefs-hat-and-thumb-up-.jpg"
    @it_img = "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTyzR-tMDcfCwJQc9lfrwa9zpsEYoON4LnpBw&usqp=CAU"
    @beauty_img ="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSVENQedJgrVxRlstQDhQaCJORxA_l43gTKeQ&usqp=CAU"
    @hair_care_img = "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSC35AL-9nBN8PS8F5CXxHymepU9Au7uBstOw&usqp=CAU"
    @wellness_img = "https://image.shutterstock.com/z/stock-vector-hand-drawn-minimal-vector-illustration-of-cartoon-black-man-character-doing-yoga-asana-pose-outside-1433462927.jpg"
    @artist_img = "https://i.pinimg.com/originals/7a/7d/43/7a7d43f98c60f34e4e38f38c9a7f41df.jpg"

    def self.sectors_obj
    business_sectors = [{"Retail": @retail_img}, {"Hospitality": @hospitality_img}, {"Food & Beverage": @food_drinks_img}, {"I.T.": @it_img}, {"Beauty": @beauty_img}, {"Hair": @hair_care_img}, {"Wellness": @wellness_img}, {"Art": @artist_img}]
    end
end
