using Xunit;
using NetCICDPortfolioDemo.Controllers;

namespace NetCICDPortfolioDemo.Tests
{
    public class WeatherForecastControllerTests
    {
        [Fact]
        public void Get_Returns_WeatherForecasts()
        {
            // Arrange
            var controller = new WeatherForecastController();

            // Act
            var result = controller.Get();

            // Assert
            Assert.NotNull(result);
            Assert.NotEmpty(result);
        }
    }
}