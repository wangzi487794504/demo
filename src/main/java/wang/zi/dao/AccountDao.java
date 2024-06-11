package wang.zi.dao;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;
import wang.zi.doman.Account;

import java.util.List;

@Repository
public interface AccountDao {
    // 查询所有账户
    @Select("select * from user")
    public List<Account> findAll();

    // 保存帐户信息
    @Insert("insert into user (AccountName,password) values (#{AccountName},#{password})")
    public void saveAccount(Account account);

}
