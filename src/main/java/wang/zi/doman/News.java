package wang.zi.doman;

public class News {
    private String Theme; 		//主题
    private String Country; 	//国家
    private String Type; 		//类别
    private String Name; 		//用户名
    private String Title; 		//标题
    private String Text; 		//内容
    private String Image; 		//图片
    private String Url; 		//图片地址

    public String getTheme() {
        return Theme;
    }
    public void setTheme(String theme) {
        Theme = theme;
    }
    public String getCountry() {
        return Country;
    }
    public void setCountry(String country) {
        Country = country;
    }
    public String getType() {
        return Type;
    }
    public void setType(String type) {
        Type = type;
    }
    public String getName() {
        return Name;
    }
    public void setName(String name) {
        Name = name;
    }
    public String getTitle() {
        return Title;
    }
    public void setTitle(String title) {
        Title = title;
    }
    public String getText() {
        return Text;
    }
    public void setText(String text) {
        Text = text;
    }
    public String getImage() {
        return Image;
    }
    public void setImage(String image) {
        Image = image;
    }
    public String getUrl() {
        return Url;
    }
    public void setUrl(String url) {
        Url = url;
    }
}
