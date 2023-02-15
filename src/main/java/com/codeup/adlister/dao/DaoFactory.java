package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import java.util.List;

public class DaoFactory {
    private static Ads adsDao;
    private static Users usersDao;
    private static Categories categoriesDao;
    private static final Config config = new Config();

    public static Ads getAdsDao() {
        if (adsDao == null) {
            adsDao = new MySQLAdsDao(config) {
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
            };
        }
        return adsDao;
    }

    public static Users getUsersDao() {
        if (usersDao == null) {
            usersDao = new MySQLUsersDao(config);
        }
        return usersDao;
    }

    public static Categories getCategoriesDao() {
        if(categoriesDao == null) {
            categoriesDao = new MySQLCategoriesDao(config);
        }
        return categoriesDao;
    }
}
