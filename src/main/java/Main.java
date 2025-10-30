package main;

import java.io.File;
import java.lang.reflect.Method;
import java.net.JarURLConnection;
import java.net.URI;
import java.net.URL;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Set;

import annotation.ClasseAnnotation;
import annotation.MethodeAnnotation;

/**
 * Scanne les packages donnés (par défaut "test" et "main"), trouve
 * les classes annotées @ClasseAnnotation et pour chacune affiche
 * ses méthodes annotées @MethodeAnnotation.
 */
public class Main {
    public static void main(String[] args) throws Exception {
        String[] packagesToScan;
        if (args != null && args.length > 0) {
            packagesToScan = args;
        } else {
            // Par défaut : on scanne les packages du projet
            packagesToScan = new String[] { "test", "main" };
        }

        for (String pkg : packagesToScan) {
            System.out.println("--- Scan package: " + pkg + " ---");
            Set<Class<?>> classes = findClasses(pkg);
            for (Class<?> cls : classes) {
                if (cls.isAnnotationPresent(ClasseAnnotation.class)) {
                    ClasseAnnotation ca = cls.getAnnotation(ClasseAnnotation.class);
                    System.out.println("Classe annotée : " + cls.getName());
                    System.out.println(" → description : " + ca.value());

                    for (Method m : cls.getDeclaredMethods()) {
                        if (m.isAnnotationPresent(MethodeAnnotation.class)) {
                            MethodeAnnotation ma = m.getAnnotation(MethodeAnnotation.class);
                            System.out.println("  Méthode associée : " + m.getName());
                            System.out.println("   → URL : " + ma.value());
                        }
                    }
                    System.out.println("--------------------------");
                }
            }
        }
    }

    /**
     * Trouve les classes dans un package (ne fonctionne que pour les classes
     * stockées sur le système de fichiers ou dans un jar présent dans le classpath).
     */
    private static Set<Class<?>> findClasses(String packageName) throws Exception {
        Set<Class<?>> classes = new HashSet<>();
        String path = packageName.replace('.', '/');
        ClassLoader classLoader = Thread.currentThread().getContextClassLoader();
        Enumeration<URL> resources = classLoader.getResources(path);

        while (resources.hasMoreElements()) {
            URL resource = resources.nextElement();
            String protocol = resource.getProtocol();

            if ("file".equals(protocol)) {
                File directory = new File(resource.toURI());
                if (directory.exists()) {
                    findClassesInDirectory(packageName, directory, classes);
                }
            } else if ("jar".equals(protocol)) {
                // Gérer les classes dans les jars (simple extraction via JarURLConnection)
                JarURLConnection conn = (JarURLConnection) resource.openConnection();
                Enumeration<java.util.jar.JarEntry> entries = conn.getJarFile().entries();
                while (entries.hasMoreElements()) {
                    java.util.jar.JarEntry entry = entries.nextElement();
                    String name = entry.getName();
                    if (name.startsWith(path) && name.endsWith(".class") && !name.contains("$")) {
                        String className = name.replace('/', '.').substring(0, name.length() - 6);
                        try {
                            classes.add(Class.forName(className));
                        } catch (Throwable e) {
                            // ignorer les classes qu'on ne peut pas charger
                        }
                    }
                }
            }
        }
        return classes;
    }

    private static void findClassesInDirectory(String packageName, File directory, Set<Class<?>> classes) {
        File[] files = directory.listFiles();
        if (files == null) return;

        for (File file : files) {
            if (file.isDirectory()) {
                String subPackage = packageName + "." + file.getName();
                findClassesInDirectory(subPackage, file, classes);
            } else if (file.getName().endsWith(".class") && !file.getName().contains("$")) {
                String className = packageName + '.' + file.getName().substring(0, file.getName().length() - 6);
                try {
                    classes.add(Class.forName(className));
                } catch (Throwable e) {
                    // ignorer les classes qui posent problème à charger
                }
            }
        }
    }
}
