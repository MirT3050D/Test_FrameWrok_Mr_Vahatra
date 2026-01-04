package main;

import annotation.MethodeAnnotation;
import annotation.GetMapping;
import annotation.PostMapping;
import annotation.RequestParam;
import annotation.Api;
import java.util.*;

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
    @MethodeAnnotation("/api/modelview")
    @GetMapping
    public modelview.ModelView mvExample() {
        modelview.ModelView mv = new modelview.ModelView();
        mv.setView("/etudiant-test-ok.jsp");
        Map<String, Object> data = new HashMap<>();
        data.put("id", 123);
        data.put("name", "mvName");
        mv.setData(data);
        return mv;
    }
}
