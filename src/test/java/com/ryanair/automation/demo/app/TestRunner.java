package com.ryanair.automation.demo.app;

import com.intuit.karate.KarateOptions;
import com.intuit.karate.junit4.Karate;
import org.junit.runner.RunWith;

@RunWith(Karate.class)
@KarateOptions(
        features = {
                "classpath:com.ryanair.automation.demo.app/usercontroller.feature",
                "classpath:com.ryanair.automation.demo.app/bookingcontroller.feature"
        },
        tags = {"~@ignore"}
        )
public class TestRunner {

}
