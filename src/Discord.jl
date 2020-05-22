module Discord

using Dates: DateTime, ISODateTimeFormat

using HTTP: HTTP
using JSON3: JSON3, StructTypes
using Parameters: @with_kw

const API_BASE = "https://discord.com/api"
const API_VERSION = 6
const USER_AGENT = let
    toml = read(joinpath(@__DIR__, "..", "Project.toml"), String)
    version = VersionNumber(match(r"version = \"(.*)\"", toml)[1])
    "Julia $VERSION / Discord.jl $version"
end

include("snowflake.jl")
include("objects.jl")
include("clients.jl")

end
