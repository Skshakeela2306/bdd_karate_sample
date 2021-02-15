package tests;

import org.testng.annotations.DataProvider;
import com.intuit.karate.testng.KarateRunner;
import cucumber.api.CucumberOptions;

@CucumberOptions(features={"src\\test\\resources\\features\\feature1.feature",
						   "src\\test\\resources\\features\\feature2.feature"},
                  monochrome=true,
                  plugin={"pretty","html:target/myresults","rerun:target/failed.txt"}
                  )
public class Runner1 extends KarateRunner
{
	//To run features in parallel
	@DataProvider(parallel=true)
	public Object[][] scenarios()
	{
		return(super.features());
	}
}






