package com.example.model.blog;

import java.time.LocalDate;

public class Blog {

    private Long id;
    private LocalDate date;
    private String title;
    private String content;
    private LocalDate postDatetime;
    private LocalDate updateDatetime;

    public Blog(Long id, LocalDate date, String title, String content, LocalDate postDatetime,
            LocalDate updateDatetime) {
        this.id = id;
        this.date = date;
        this.title = title;
        this.content = content;
        this.postDatetime = postDatetime;
        this.updateDatetime = updateDatetime;
    }

    public Long getId() {
        return id;
    }

    public LocalDate getDate() {
        return date;
    }

    public String getTitle() {
        return title;
    }

    public String getContent() {
        return content;
    }

    public LocalDate getPostDatetime() {
        return postDatetime;
    }

    public LocalDate getUpdateDatetime() {
        return updateDatetime;
    }

    @Override
    public String toString() {
        return "Blog [id=" + id + ", date=" + date + ", title=" + title + ", content=" + content + ", postDatetime="
                + postDatetime + ", updateDatetime=" + updateDatetime + "]";
    }
}
