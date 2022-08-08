using System;
using Amazon.Lambda.Core;
using System.IO;
using System.Text;

// Assembly attribute to enable the Lambda function's JSON input to be converted into a .NET class.
[assembly: LambdaSerializer(typeof(Amazon.Lambda.Serialization.SystemTextJson.DefaultLambdaJsonSerializer))]

namespace HelloWorld
{
    public class Function
    {

    public Stream HelloWorld(Stream input, ILambdaContext context)
    {
        context.Logger.Log("Hello world from Lambda function\n");

        context.Logger.Log($"Function name: {context.FunctionName}\n");
        context.Logger.Log($"Function version: {context.FunctionVersion}\n");
        context.Logger.Log($"Function ARN: {context.InvokedFunctionArn}\n");

        Console.WriteLine($"Remaining lambda execution time: {context.RemainingTime.TotalMilliseconds}ms");

        return new MemoryStream(Encoding.UTF8.GetBytes("OK"));
    }

  }
}
