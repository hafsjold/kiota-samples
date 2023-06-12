using GetUserClient.ApiClient.Me;
using Microsoft.Kiota.Abstractions.Extensions;
using Microsoft.Kiota.Abstractions;
using Microsoft.Kiota.Cli.Commons.IO;
using Microsoft.Kiota.Cli.Commons;
using Microsoft.Kiota.Serialization.Form;
using Microsoft.Kiota.Serialization.Json;
using Microsoft.Kiota.Serialization.Text;
using System.Collections.Generic;
using System.CommandLine;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System;
namespace GetUserClient.ApiClient {
    /// <summary>
    /// The main entry point of the SDK, exposes the configuration and the fluent API.
    /// </summary>
    public class GetUserApiClient : BaseCliRequestBuilder {
        /// <summary>
        /// The me property
        /// </summary>
        public Command BuildMeNavCommand() {
            var command = new Command("me");
            command.Description = "The me property";
            var builder = new MeRequestBuilder(PathParameters);
            var execCommands = new List<Command>();
            execCommands.Add(builder.BuildGetCommand());
            foreach (var cmd in execCommands)
            {
                command.AddCommand(cmd);
            }
            return command;
        }
        /// <summary>
        /// Instantiates a new GetUserApiClient and sets the default values.
        /// </summary>
        public Command BuildRootCommand() {
            var command = new RootCommand();
            command.Description = "Instantiates a new GetUserApiClient and sets the default values.";
            command.AddCommand(BuildMeNavCommand());
            return command;
        }
        /// <summary>
        /// Instantiates a new GetUserApiClient and sets the default values.
        /// </summary>
        public GetUserApiClient() : base("{+baseurl}", new Dictionary<string, object>()) {
        }
    }
}
