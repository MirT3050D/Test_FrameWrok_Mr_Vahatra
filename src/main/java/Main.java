// package main;

// import scan.ClassPathScanner;
// import java.util.Arrays;

// /**
//  * Entrée principale :
//  * - Sans argument : scan complet du classpath
//  * - Avec une liste d'arguments : ces arguments sont des filtres de package appliqués au scan du classpath
//  * - Si le premier argument est --classpath ou -cp, les suivants sont des filtres (optionnel)
//  */
// public class Main {
//     public static void main(String[] args) throws Exception {
//         if (args == null || args.length == 0) {
//             // scan complet du classpath
//             ClassPathScanner.scanClassPathAndPrint();
//             return;
//         }

//         // Si l'utilisateur a préfixé par --classpath ou -cp, on accepte aussi
//         if ("--classpath".equals(args[0]) || "-cp".equals(args[0])) {
//             String[] filters = Arrays.copyOfRange(args, 1, args.length);
//             if (filters.length == 0) {
//                 ClassPathScanner.scanClassPathAndPrint();
//             } else {
//                 ClassPathScanner.scanClassPathAndPrint(filters);
//             }
//         } else {
//             // On considère les args comme des filtres de package
//             ClassPathScanner.scanClassPathAndPrint(args);
//         }
//     }
// }
