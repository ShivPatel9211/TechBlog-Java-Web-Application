/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.techblog.entities;

/**
 *
 * @author spate
 */
public class Message {
    private String content;
    private String type;
    private String csslass;

    public Message(String content, String type, String csslass) {
        this.content = content;
        this.type = type;
        this.csslass = csslass;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getCsslass() {
        return csslass;
    }

    public void setCsslass(String csslass) {
        this.csslass = csslass;
    }
            
    
    
}
