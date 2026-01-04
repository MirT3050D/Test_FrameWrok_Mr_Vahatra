package main;

import annotation.MethodeAnnotation;
import annotation.ClasseAnnotation;
import annotation.GetMapping;
import annotation.PostMapping;
import annotation.RequestParam;
import annotation.Api;
import java.util.*;

@ClasseAnnotation("ApiExample controller")
public class ApiExample {

    @Api
    @MethodeAnnotation("/api/account")
    @GetMapping
    public Account getAccount(@RequestParam("id") int id) {
        return new Account(id, "Name" + id);
    }

    @Api
    @MethodeAnnotation("/api/accounts")
    @GetMapping
    public List<Account> listAccounts() {
        List<Account> l = new ArrayList<>();
        l.add(new Account(1, "Alice"));
        l.add(new Account(2, "Bob"));
        return l;
    }

    @Api
    @MethodeAnnotation("/api/createAccount")
    @PostMapping
    public Account createAccount(@RequestParam("name") String name) {
        return new Account(new java.util.Random().nextInt(1000), name);
    }

    @Api
    @MethodeAnnotation("/api/upload")
    @PostMapping
    public java.util.Map<String, Object> uploadFile(@RequestParam("file") FileUpload file, @RequestParam("desc") String desc) {
        java.util.Map<String, Object> res = new java.util.HashMap<>();
        if (file != null) {
            res.put("filename", file.getFilename());
            res.put("size", file.getSize());
            res.put("contentType", file.getContentType());
            res.put("desc", desc != null ? desc : "");
            res.put("savedPath", file.getSavedPath());
        } else {
            res.put("status", "no_file");
        }
        return res;
    }

    @Api
    @MethodeAnnotation("/api/modelview")
    @GetMapping
    public modelview.ModelView mvExample() {
        Map<String, Object> data = new HashMap<>();
        data.put("id", 123);
        data.put("name", "mvName");
        modelview.ModelView mv = new modelview.ModelView("/etudiant-test-ok.jsp", data);
        return mv;
    }
}
