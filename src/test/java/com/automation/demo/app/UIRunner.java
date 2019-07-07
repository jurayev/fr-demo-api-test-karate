package com.automation.demo.app;

import com.intuit.karate.ui.App;
import org.junit.Test;

public class UIRunner {
    @Test
    public void testApp() {
        App.run("src/test/resources/com/automation/demo/app/usercontroller.feature", "");
    }
}
