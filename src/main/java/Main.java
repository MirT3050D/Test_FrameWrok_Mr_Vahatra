package main;
import java.lang.reflect.Method;

import annotation.MethodeAnnotation;
import test.*;
public class Main {
    public static void main(String[] args)
    {
        Test test = new Test();
        for (Method method : Test.class.getDeclaredMethods()) {
            if (method.isAnnotationPresent(MethodeAnnotation.class)) {
                MethodeAnnotation methodeAnnotation = method.getAnnotation(MethodeAnnotation.class);
                System.out.println("Méthode associée : " + method.getName());
                System.out.println(" → URL : " + methodeAnnotation.value());
                System.out.println("--------------------------");
            }
        }
    }
}
