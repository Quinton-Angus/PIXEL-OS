#include <efi.h>
#include <efilib.h>

extern "C" EFI_STATUS EFIAPI efi_main(EFI_HANDLE ImageHandle, EFI_SYSTEM_TABLE *SystemTable) {
    InitializeLib(ImageHandle, SystemTable);

    SystemTable->ConOut->ClearScreen(SystemTable->ConOut);
    SystemTable->ConOut->SetAttribute(SystemTable->ConOut, EFI_WHITE | EFI_BACKGROUND_BLACK);

    Print(L"PIXEL OS\r\n\r\n");
    Print(L"(C) Quinton DEV 2026\r\n\r\n");
    Print(L"Booting...\r\n");

    for (;;) {
    }

    return EFI_SUCCESS;
}
