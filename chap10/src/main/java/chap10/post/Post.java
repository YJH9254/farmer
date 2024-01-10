package chap10.post; 

public class Post {
    private String title;
    private String password;
    private String content;

    public Post(String title, String password, String content) {
        this.title = title;
        this.password = password;
        this.content = content;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}