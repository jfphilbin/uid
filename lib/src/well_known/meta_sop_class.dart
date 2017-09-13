// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> -
// See the AUTHORS file for other contributors.

import 'package:uid/src/uid_type.dart';
import 'package:uid/src/well_known/wk_uid.dart';

//TODO: Unit test.

class MetaSopClass extends WKUid {
  const MetaSopClass(
      String uid, String keyword, UidType type, bool isRetired, String name)
      : super(uid, keyword, type, isRetired, name);

  //TODO: create UidType class
  bool get isSopClass => true;

  @override
  String get info => '$runtimeType($asString)';

  @override
  String toString() => asString;

  //TODO: when other classes are implemented convert to lookup the uidString
  //in each class.
  static MetaSopClass lookup(String s) => map[s];

  static const MetaSopClass kDetachedPatientManagement = const MetaSopClass(
    "1.2.840.10008.3.1.2.1.4",
    "DetachedPatientManagementMetaSOPClass_Retired",
    UidType.kMetaSOPClass,
    true,
    "Detached Patient Management Meta SOP Class (Retired)",
  );

  static const MetaSopClass kDetachedResultsManagement = const MetaSopClass(
    "1.2.840.10008.3.1.2.5.4",
    "DetachedResultsManagementMetaSOPClass_Retired",
    UidType.kMetaSOPClass,
    true,
    "Detached Results Management Meta SOP Class (Retired)",
  );

  static const MetaSopClass kDetachedStudyManagement = const MetaSopClass(
      "1.2.840.10008.3.1.2.5.5",
      "DetachedStudyManagementMetaSOPClass_Retired",
      UidType.kMetaSOPClass,
      true,
      "Detached Study Management Meta SOP Class (Retired)");

  static const MetaSopClass kBasicGrayscalePrintManagement =
      const MetaSopClass(
          "1.2.840.10008.5.1.1.9",
          "BasicGrayscalePrintManagementMetaSOPClass",
          UidType.kMetaSOPClass,
          false,
          "Basic Grayscale Print Management Meta SOP Class");

  static const MetaSopClass kReferencedGrayscalePrintManagement =
      const MetaSopClass(
    "1.2.840.10008.5.1.1.9.1",
    "ReferencedGrayscalePrintManagementMetaSOPClass_Retired",
    UidType.kMetaSOPClass,
    true,
    "Referenced Grayscale Print Management Meta SOP Class (Retired)",
  );

  static const MetaSopClass kBasicColorPrintManagement =
      const MetaSopClass(
          "1.2.840.10008.5.1.1.18",
          "BasicColorPrintManagementMetaSOPClass",
          UidType.kMetaSOPClass,
          false,
          "Basic Color Print Management Meta SOP Class");

  static const MetaSopClass kReferencedColorPrintManagement =
      const MetaSopClass(
    "1.2.840.10008.5.1.1.18.1",
    "ReferencedColorPrintManagementMetaSOPClass_Retired",
    UidType.kMetaSOPClass,
    true,
    "Referenced Color Print Management Meta SOP Class (Retired)",
  );

  static const MetaSopClass kPullStoredPrintManagement = const MetaSopClass(
    "1.2.840.10008.5.1.1.32",
    "PullStoredPrintManagementMetaSOPClass_Retired",
    UidType.kMetaSOPClass,
    true,
    "Pull Stored Print Management Meta SOP Class (Retired)",
  );

  static const MetaSopClass kGeneralPurposeWorklistManagement =
      const MetaSopClass(
    "1.2.840.10008.5.1.4.32",
    "GeneralPurposeWorklistManagementMetaSOPClass_Retired",
    UidType.kMetaSOPClass,
    true,
    "General Purpose Worklist Management Meta SOP Class (Retired)",
  );

  static const List<MetaSopClass> members = const <MetaSopClass>[
    kDetachedPatientManagement,
    kDetachedResultsManagement,
    kDetachedStudyManagement,
    kBasicGrayscalePrintManagement,
    kReferencedGrayscalePrintManagement,
    kBasicColorPrintManagement,
    kReferencedColorPrintManagement,
    kPullStoredPrintManagement,
    kGeneralPurposeWorklistManagement
  ];

  static const Map<String, MetaSopClass> map = const <String, MetaSopClass>{
    "1.2.840.10008.3.1.2.1.4": kDetachedPatientManagement,
    "1.2.840.10008.3.1.2.5.4": kDetachedResultsManagement,
    "1.2.840.10008.3.1.2.5.5": kDetachedStudyManagement,
    "1.2.840.10008.5.1.1.9": kBasicGrayscalePrintManagement,
    "1.2.840.10008.5.1.1.9.1": kReferencedGrayscalePrintManagement,
    "1.2.840.10008.5.1.1.18": kBasicColorPrintManagement,
    "1.2.840.10008.5.1.1.18.1": kReferencedColorPrintManagement,
    "1.2.840.10008.5.1.1.32": kPullStoredPrintManagement,
    "1.2.840.10008.5.1.4.32": kGeneralPurposeWorklistManagement
  };
}