locals {
  files = ["ips.json", "sitemap.xml", "report.csv"]

  file_extensions = [for file in local.files : regex("\\.[0-9a-z]+$", file)]

  file_extensions_upper = { for f in local.file_extensions : f => upper(f) if f != ".json" }

  ips = [
    {
      public : "192.168.0.1"
      private : "192.168.1.0"
    },
    {
      public : "192.168.0.10"
      private : "192.168.1.1"
    }
  ]
}