const std = @import("std");
const Pkg = std.build.Pkg;
const FileSource = std.build.FileSource;

pub const build_pkgs = struct {
    pub const libxml2 = @import(".gyro/zig-libxml2-mitchellh-github.com-2c64ff7d/pkg/libxml2.zig");
};

pub const pkgs = struct {
    pub const clap = Pkg{
        .name = "clap",
        .source = FileSource{
            .path = ".gyro/zig-clap-Hejsil-github.com-ee6cb6a1/pkg/clap.zig",
        },
    };

    pub fn addAllTo(artifact: *std.build.LibExeObjStep) void {
        artifact.addPackage(pkgs.clap);
    }
};
