package tests;

import com.intuit.karate.testng.KarateRunner;

import cucumber.api.CucumberOptions;

@CucumberOptions(features={"src\\test\\resources\\features\\feature3.feature"},
                  monochrome=true,
                  plugin={"pretty","html:target/myresults","rerun:target/failed.txt"}
                  )
public class Runner2 extends KarateRunner
{
}
