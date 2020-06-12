# This file has been generated by node2nix 1.7.0. Do not edit!

{nodeEnv, fetchurl, fetchgit, globalBuildInputs ? []}:

let
  sources = {
    "async-0.2.10" = {
      name = "async";
      packageName = "async";
      version = "0.2.10";
      src = fetchurl {
        url = "https://registry.npmjs.org/async/-/async-0.2.10.tgz";
        sha1 = "b6bbe0b0674b9d719708ca38de8c237cb526c3d1";
      };
    };
    "binary-search-tree-0.2.4" = {
      name = "binary-search-tree";
      packageName = "binary-search-tree";
      version = "0.2.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/binary-search-tree/-/binary-search-tree-0.2.4.tgz";
        sha1 = "14fe106366a59ca8efb68c0ae30c36aaff0cd510";
      };
    };
    "isnumber-1.0.0" = {
      name = "isnumber";
      packageName = "isnumber";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/isnumber/-/isnumber-1.0.0.tgz";
        sha1 = "0e3f9759b581d99dd85086f0ec2a74909cfadd01";
      };
    };
    "mkdirp-0.3.5" = {
      name = "mkdirp";
      packageName = "mkdirp";
      version = "0.3.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/mkdirp/-/mkdirp-0.3.5.tgz";
        sha1 = "de3e5f8961c88c787ee1368df849ac4413eca8d7";
      };
    };
    "nedb-1.0.2" = {
      name = "nedb";
      packageName = "nedb";
      version = "1.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/nedb/-/nedb-1.0.2.tgz";
        sha1 = "309f10ba29f2002f74a92fb870b8a53ba2131593";
      };
    };
    "underscore-1.4.4" = {
      name = "underscore";
      packageName = "underscore";
      version = "1.4.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/underscore/-/underscore-1.4.4.tgz";
        sha1 = "61a6a32010622afa07963bf325203cf12239d604";
      };
    };
    "underscore-1.9.1" = {
      name = "underscore";
      packageName = "underscore";
      version = "1.9.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/underscore/-/underscore-1.9.1.tgz";
        sha512 = "5/4etnCkd9c8gwgowi5/om/mYO5ajCaOgdzj/oW+0eQV9WxKBDZw5+ycmKmeaTXjInS/W0BzpGLo2xR2aBwZdg==";
      };
    };
  };
in
{
  "nixui-git://github.com/matejc/nixui.git#0.2.1" = nodeEnv.buildNodePackage {
    name = "nixui";
    packageName = "nixui";
    version = "0.2.1";
    src = fetchgit {
      url = "git://github.com/matejc/nixui.git";
      rev = "845a5f4a33f1d0c509c727c130d0792a5b450a38";
      sha256 = "2a2b1dcd9201e306242688c6c86f520ac47ef5de841ae0d7ea6ae8ff2889c3ab";
    };
    dependencies = [
      sources."async-0.2.10"
      (sources."binary-search-tree-0.2.4" // {
        dependencies = [
          sources."underscore-1.4.4"
        ];
      })
      sources."isnumber-1.0.0"
      sources."mkdirp-0.3.5"
      (sources."nedb-1.0.2" // {
        dependencies = [
          sources."underscore-1.4.4"
        ];
      })
      sources."underscore-1.9.1"
    ];
    buildInputs = globalBuildInputs;
    meta = {
      description = "nix-env frontend written with Polymer";
      homepage = https://github.com/matejc/nixui;
      license = "Apache-2.0";
    };
    production = true;
    bypassCache = true;
    reconstructLock = true;
  };
}