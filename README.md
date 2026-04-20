# jaspr_license_generator

A Dart tool to generate a file that contains all licenses of the third-party libraries used in your project.

> **This is a fork of [flutter-icapps-license](https://github.com/icapps/flutter-icapps-license) by icapps, adapted for use with [Jaspr](https://jaspr.site/) web framework.**

---

## Setup

### Add dependency to pubspec.yaml

```yaml
dev_dependencies:
  jaspr_license_generator: <latest-version>
```

---

## Configuration

Add the following to your `pubspec.yaml`:

### Basic options

```yaml
jaspr_license_generator:
  fail_fast: true # (optional) Errors are not ignored and the generator will fail on error
```

### All options

```yaml
jaspr_license_generator:
  fail_fast: boolean          # (optional) If true, fails at first error. Default: false
  check_before_generate: boolean # (optional) Checks pubspec.yaml & pubspec.lock sync before generating. Default: false
  output_path: String         # (optional) Override default output path. Default: lib/util/license.dart
  download_pub_dev_details: bool # (optional) Downloads homepage/repository from pub.dev. Default: false
  pub_dev_base_url: String    # (optional) Override pub.dev base URL. Default: https://pub.dev
  licenses:                   # (optional) Key-value pairs of package name / raw license URL
    # example:
    # some_package: https://raw.githubusercontent.com/owner/repo/master/LICENSE
  ignore_licenses:            # (optional) List of package names to ignore
    - shared_preferences
  extra_licenses:             # (optional) Add licenses not in pubspec.yaml
    some_package:
      name: String            # (optional) Override package name
      version: String         # (optional) Package version
      homepage: String        # (optional) Homepage URL
      repository: String      # (optional) Repository URL
      license: String         # (required) http/https URL or file path to license content
      dev_dependency: boolean # (optional) Internal use
      part_of_flutter_sdk: boolean # (optional) Uses the Flutter SDK license if true
```

---

## Usage

### Generate the license file

```bash
dart pub run jaspr_license_generator generate
```

### Check if pubspec.yaml and pubspec.lock are in sync

```bash
dart pub run jaspr_license_generator check
```

### Log levels

```bash
# Default (info)
dart pub run jaspr_license_generator generate

# Debug — shows stack traces and errors
dart pub run jaspr_license_generator generate debug

# Verbose — logs everything including file downloads
dart pub run jaspr_license_generator generate verbose
```

---

## License

This project is a fork of [flutter-icapps-license](https://github.com/icapps/flutter-icapps-license) by [icapps](https://github.com/icapps), licensed under the MIT License.

See [LICENSE](./LICENSE) for details.