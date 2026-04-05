package test.java.runners;

import com.intuit.karate.junit5.Karate;

class TestRunner {

    @Karate.Test
    Karate testAll() {
        // Ejecuta el feature usando path absoluto desde resources
        return Karate.run("classpath:features/users.feature");
    }
}