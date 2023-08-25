class HomeModal {
  HomeModal({
    String? activeCasesText,
    String? countryText,
    String? lastUpdate,
    String? newCasesText,
    String? newDeathsText,
    String? totalCasesText,
    String? totalDeathsText,
    String? totalRecoveredText,
  }) {
    _activeCasesText = activeCasesText;
    _countryText = countryText;
    _lastUpdate = lastUpdate;
    _newCasesText = newCasesText;
    _newDeathsText = newDeathsText;
    _totalCasesText = totalCasesText;
    _totalDeathsText = totalDeathsText;
    _totalRecoveredText = totalRecoveredText;
  }

  HomeModal.fromJson(dynamic json) {
    _activeCasesText = json['Active Cases_text'];
    _countryText = json['Country_text'];
    _lastUpdate = json['Last Update'];
    _newCasesText = json['New Cases_text'];
    _newDeathsText = json['New Deaths_text'];
    _totalCasesText = json['Total Cases_text'];
    _totalDeathsText = json['Total Deaths_text'];
    _totalRecoveredText = json['Total Recovered_text'];
  }

  String? _activeCasesText;
  String? _countryText;
  String? _lastUpdate;
  String? _newCasesText;
  String? _newDeathsText;
  String? _totalCasesText;
  String? _totalDeathsText;
  String? _totalRecoveredText;

  HomeModal copyWith({
    String? activeCasesText,
    String? countryText,
    String? lastUpdate,
    String? newCasesText,
    String? newDeathsText,
    String? totalCasesText,
    String? totalDeathsText,
    String? totalRecoveredText,
  }) =>
      HomeModal(
        activeCasesText: activeCasesText ?? _activeCasesText,
        countryText: countryText ?? _countryText,
        lastUpdate: lastUpdate ?? _lastUpdate,
        newCasesText: newCasesText ?? _newCasesText,
        newDeathsText: newDeathsText ?? _newDeathsText,
        totalCasesText: totalCasesText ?? _totalCasesText,
        totalDeathsText: totalDeathsText ?? _totalDeathsText,
        totalRecoveredText: totalRecoveredText ?? _totalRecoveredText,
      );

  String? get activeCasesText => _activeCasesText;

  String? get countryText => _countryText;

  String? get lastUpdate => _lastUpdate;

  String? get newCasesText => _newCasesText;

  String? get newDeathsText => _newDeathsText;

  String? get totalCasesText => _totalCasesText;

  String? get totalDeathsText => _totalDeathsText;

  String? get totalRecoveredText => _totalRecoveredText;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Active Cases_text'] = _activeCasesText;
    map['Country_text'] = _countryText;
    map['Last Update'] = _lastUpdate;
    map['New Cases_text'] = _newCasesText;
    map['New Deaths_text'] = _newDeathsText;
    map['Total Cases_text'] = _totalCasesText;
    map['Total Deaths_text'] = _totalDeathsText;
    map['Total Recovered_text'] = _totalRecoveredText;
    return map;
  }
}