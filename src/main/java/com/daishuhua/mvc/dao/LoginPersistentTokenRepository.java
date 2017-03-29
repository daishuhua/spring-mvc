package com.daishuhua.mvc.dao;

import com.daishuhua.mvc.model.PersistentLogin;
import org.springframework.security.web.authentication.rememberme.PersistentRememberMeToken;
import org.springframework.security.web.authentication.rememberme.PersistentTokenRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaDelete;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import java.util.Date;
import java.util.List;

/**
 * Created by shuhuadai on 2017/3/24.
 */

@Repository
@Transactional
public class LoginPersistentTokenRepository extends AbstractDao<String, PersistentLogin> implements PersistentTokenRepository{

    @Override
    public void createNewToken(PersistentRememberMeToken token) {
        PersistentLogin persistentLogin = new PersistentLogin();
        persistentLogin.setUserName(token.getUsername());
        persistentLogin.setSeries(token.getSeries());
        persistentLogin.setToken(token.getTokenValue());
        persistentLogin.setLastUsed(token.getDate());
        persist(persistentLogin);

    }

    @Override
    public void updateToken(String series, String tokenValue, Date lastUsed) {
        PersistentLogin persistentLogin = findByKey(series);
        persistentLogin.setToken(tokenValue);
        persistentLogin.setLastUsed(lastUsed);
        update(persistentLogin);
    }

    @Override
    public PersistentRememberMeToken getTokenForSeries(String seriesId) {
        CriteriaBuilder criteriaBuilder = getSession().getCriteriaBuilder();
        CriteriaQuery<PersistentLogin> criteriaQuery = criteriaBuilder.createQuery(PersistentLogin.class);
        Root<PersistentLogin> persistentLoginRoot = criteriaQuery.from(PersistentLogin.class);
        criteriaQuery.where(criteriaBuilder.equal(persistentLoginRoot.get("series"), seriesId));
        TypedQuery<PersistentLogin> typedQuery = getSession().createQuery(criteriaQuery);
        List<PersistentLogin> persistentLoginList = typedQuery.getResultList();
        if (persistentLoginList.isEmpty()) {
            return null;
        } else {
            PersistentLogin persistentLogin = persistentLoginList.get(0);
            return new PersistentRememberMeToken(persistentLogin.getUserName(), persistentLogin.getSeries(), persistentLogin.getToken(), persistentLogin.getLastUsed());
        }
    }

    @Override
    public void removeUserTokens(String username) {
        CriteriaBuilder criteriaBuilder = getSession().getCriteriaBuilder();
        CriteriaDelete<PersistentLogin> criteriaDelete = criteriaBuilder.createCriteriaDelete(PersistentLogin.class);
        Root<PersistentLogin> persistentLoginRoot = criteriaDelete.from(PersistentLogin.class);
        criteriaDelete.where(criteriaBuilder.equal(persistentLoginRoot.get("userName"), username));
        getSession().createQuery(criteriaDelete).executeUpdate();
    }
}