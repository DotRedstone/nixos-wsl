# ---
# Module: Locale & Time
# Description: Timezone and UTF-8 locale baseline for WSL
# Scope: System
# ---

{ profile, ... }: {
  time.timeZone = profile.timeZone;

  i18n.defaultLocale = "en_US.UTF-8";
  i18n.supportedLocales = [
    "en_US.UTF-8/UTF-8"
    "zh_CN.UTF-8/UTF-8"
  ];
}
