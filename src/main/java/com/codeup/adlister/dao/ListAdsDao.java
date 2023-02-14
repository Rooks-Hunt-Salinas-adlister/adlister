package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import java.util.ArrayList;
import java.util.List;

public class ListAdsDao implements Ads {
    private List<Ad> ads;

    public List<Ad> all() {
        if (ads == null) {
            ads = generateAds();
        }
        return ads;
    }

    public Long insert(Ad ad) {
        // make sure we have ads
        if (ads == null) {
            ads = generateAds();
        }
        // we'll assign an "id" here based on the size of the ads list
        // really the dao would handle this
        ad.setId((long) ads.size());
        ads.add(ad);
        return ad.getId();
    }

    @Override
    public List<Ad> userAds(User user) {
        return null;
    }

    @Override
    public Ad getAdById(long id) {
        return null;
    }

    @Override
    public void deleteAd(Ad ad) {

    }

    @Override
    public Ad singleAd(Long adId) {
        return null;
    }

    @Override
    public Ad findAdByID(long adId) {
        return null;
    }

    @Override
    public void deleteAd(long adId) {

    }

    @Override
    public void updateAd(Ad ad) {

    }

    @Override
    public void delete(Long adId) {

    }

    @Override
    public void linkAdToCategory(long adId, long categoryId) {

    }

    @Override
    public List<Ad> getAdsWithCategory(Long categoryId) {
        return null;
    }

    @Override
    public List<Ad> getAdsByTitle(String title) {
        return null;
    }

    @Override
    public List<Ad> getAdsByDescription(String description) {
        return null;
    }

    @Override
    public List<Ad> findAdByKeyword(String search) {
        return null;
    }

    private List<Ad> generateAds() {
        List<Ad> ads = new ArrayList<>();
        ads.add(new Ad(
            1,
            "Playstation",
            "This is a slightly used playstation",
            "Picture"
        ));
        ads.add(new Ad(
            2,
            "Super Nintendo",
            "Get your game on with this old-school classic!",
            "Picture"
        ));
        ads.add(new Ad(
            3,
            "Junior Java Developer Position",
            "Minimum 7 years of experience required. You will be working in the scripting language for Java, JavaScript",
            "Picture"
        ));
        ads.add(new Ad(
            4,
            "JavaScript Developer needed",
            "Must have strong Java skills",
            "Picture"
        ));
        return ads;
    }
}