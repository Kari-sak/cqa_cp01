package pet;
import com.intuit.karate.junit5.Karate;


class Runner {

	@Karate.Test
	Karate testSystemProperty() {
		return Karate.run("classpath:./")
				.tags("@PostPet")
				.karateEnv("e2e");
		}
	}
