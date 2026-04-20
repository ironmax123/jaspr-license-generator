// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'license.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(LicenseService)
final licenseServiceProvider = LicenseServiceProvider._();

final class LicenseServiceProvider
    extends $NotifierProvider<LicenseService, List<License>> {
  LicenseServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'licenseServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$licenseServiceHash();

  @$internal
  @override
  LicenseService create() => LicenseService();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<License> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<License>>(value),
    );
  }
}

String _$licenseServiceHash() => r'0fc445a2f8dd660d493b24ab223b1444761f53cb';

abstract class _$LicenseService extends $Notifier<List<License>> {
  List<License> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<List<License>, List<License>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<License>, List<License>>,
              List<License>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
