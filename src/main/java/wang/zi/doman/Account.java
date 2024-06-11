package wang.zi.doman;

import java.io.Serializable;

public class Account implements Serializable {

    @Override
    public String toString() {
        return "Account [AccountName=" + AccountName + ", password=" + password + "]";
    }
    private String AccountName; // 用户名
    private String password; // 密码

    public String getAccountName() {
        return AccountName;
    }
    public void setAccountName(String AccountName) {
        this.AccountName = AccountName;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }

}
