bool withNoCategory(String? filter) {
  if (filter == null || filter == '' || filter == 'Όλα') {
    return true;
  }
  return false;
}
