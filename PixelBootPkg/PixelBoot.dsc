[Defines]
  PLATFORM_NAME                  = PixelBoot
  PLATFORM_GUID                  = 89abcdef-0123-4567-89ab-cdef01234567
  PLATFORM_VERSION               = 1.0
  DSC_SPECIFICATION              = 0x00010017
  OUTPUT_DIRECTORY               = Build/PixelBoot
  SUPPORTED_ARCHITECTURES        = X64
  BUILD_TARGETS                  = DEBUG|RELEASE
  SKUID_IDENTIFIER               = DEFAULT

[Packages]
  MdePkg/MdePkg.dec

[LibraryClasses]
  UefiApplicationEntryPoint|MdePkg/Library/UefiApplicationEntryPoint/UefiApplicationEntryPoint.inf
  UefiLib|MdePkg/Library/UefiLib/UefiLib.inf

[Components]
  PixelBootPkg/PixelBoot.inf
