String getIconAsset(String description) {
  final lower = description.toLowerCase();
  if (lower.contains('cloud')) return 'assets/images/cloud.png';
  if (lower.contains('rain')) return 'assets/images/rain.png';
  if (lower.contains('clear')) return 'assets/images/sun.png';
  return 'assets/images/cloud.png'; // fallback
}
