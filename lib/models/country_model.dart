class CountryModel {
  Name? name;
  List<dynamic>? tld;
  String? cca2;
  String? ccn3;
  String? cca3;
  String? cioc;
  bool? independent;
  String? status;
  bool? unMember;
  Currencies? currencies;
  Idd? idd;
  List<dynamic>? capital;
  List<dynamic>? altSpellings;
  String? region;
  String? subregion;
  Languages? languages;
  Translations? translations;
  List<dynamic>? latlng;
  bool? landlocked;
  List<dynamic>? borders;
  num? area;
  Demonyms? demonyms;
  String? flag;
  Maps? maps;
  num? population;
  String? fifa;
  Car? car;
  List<dynamic>? timezones;
  List<dynamic>? continents;
  Flags? flags;
  CoatOfArms? coatOfArms;
  String? startOfWeek;
  CapitalInfo? capitalInfo;
  PostalCode? postalCode;

  CountryModel(
      {this.name,
      this.tld,
      this.cca2,
      this.ccn3,
      this.cca3,
      this.cioc,
      this.independent,
      this.status,
      this.unMember,
      this.currencies,
      this.idd,
      this.capital,
      this.altSpellings,
      this.region,
      this.subregion,
      this.languages,
      this.translations,
      this.latlng,
      this.landlocked,
      this.borders,
      this.area,
      this.demonyms,
      this.flag,
      this.maps,
      this.population,
      this.fifa,
      this.car,
      this.timezones,
      this.continents,
      this.flags,
      this.coatOfArms,
      this.startOfWeek,
      this.capitalInfo,
      this.postalCode});

  CountryModel.fromJson(Map<String, dynamic> json) {
    name = json['name'] != null ? Name.fromJson(json['name']) : null;

    /* flutter: Receiver: null
      flutter: Tried calling: cast<dynamic>()
      */
    // before
    //  tld = json['tld'].cast<dynamic>();
    // After
    tld = json["tld"] == null
        ? []
        : List<dynamic>.from(json["tld"].map((x) => x));

    cca2 = json['cca2'];
    ccn3 = json['ccn3'];
    cca3 = json['cca3'];
    cioc = json['cioc'];
    independent = json['independent'];
    status = json['status'];
    unMember = json['unMember'];
    currencies = json['currencies'] != null
        ? Currencies.fromJson(json['currencies'])
        : null;
    idd = json['idd'] != null ? Idd.fromJson(json['idd']) : null;
    // capital = json['capital'].cast<dynamic>();
    capital = json["capital"] == null
        ? []
        : List<dynamic>.from(json["capital"].map((x) => x));

    // altSpellings = json['altSpellings'].cast<dynamic>();
    altSpellings = json["altSpellings"] == null
        ? []
        : List<dynamic>.from(json["altSpellings"].map((x) => x));
    region = json['region'];
    subregion = json['subregion'];
    languages = json['languages'] != null
        ? Languages.fromJson(json['languages'])
        : null;
    translations = json['translations'] != null
        ? Translations.fromJson(json['translations'])
        : null;

    //  latlng = json['latlng'].cast<double>();
    latlng = json["latlng"] == null
        ? []
        : List<dynamic>.from(json["latlng"].map((x) => x));

    landlocked = json['landlocked'];
    // borders = json['borders'].cast<dynamic>();
    borders = json["borders"] == null
        ? []
        : List<dynamic>.from(json["borders"].map((x) => x));
    area = json['area'];
    demonyms = json['demonyms'] != null
        ? Demonyms.fromJson(json['demonyms'])
        : null;
    flag = json['flag'];
    maps = json['maps'] != null ? Maps.fromJson(json['maps']) : null;
    population = json['population'];
    fifa = json['fifa'];
    car = json['car'] != null ? Car.fromJson(json['car']) : null;
    // timezones = json['timezones'].cast<dynamic>();
    timezones = json["timezones"] == null
        ? []
        : List<dynamic>.from(json["timezones"].map((x) => x));
    //continents = json['continents'].cast<dynamic>();
    continents = json["continents"] == null
        ? []
        : List<dynamic>.from(json["continents"].map((x) => x));
    flags = json['flags'] != null ? Flags.fromJson(json['flags']) : null;
    coatOfArms = json['coatOfArms'] != null
        ? CoatOfArms.fromJson(json['coatOfArms'])
        : null;
    startOfWeek = json['startOfWeek'];
    capitalInfo = json['capitalInfo'] != null
        ? CapitalInfo.fromJson(json['capitalInfo'])
        : null;
    postalCode = json['postalCode'] != null
        ? PostalCode.fromJson(json['postalCode'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (name != null) {
      data['name'] = name!.toJson();
    }
    data['tld'] = tld;
    data['cca2'] = cca2;
    data['ccn3'] = ccn3;
    data['cca3'] = cca3;
    data['cioc'] = cioc;
    data['independent'] = independent;
    data['status'] = status;
    data['unMember'] = unMember;
    if (currencies != null) {
      data['currencies'] = currencies!.toJson();
    }
    if (idd != null) {
      data['idd'] = idd!.toJson();
    }
    data['capital'] = capital;
    data['altSpellings'] = altSpellings;
    data['region'] = region;
    data['subregion'] = subregion;
    if (languages != null) {
      data['languages'] = languages!.toJson();
    }
    if (translations != null) {
      data['translations'] = translations!.toJson();
    }
    data['latlng'] = latlng;
    data['landlocked'] = landlocked;
    data['borders'] = borders;
    data['area'] = area;
    if (demonyms != null) {
      data['demonyms'] = demonyms!.toJson();
    }
    data['flag'] = flag;
    if (maps != null) {
      data['maps'] = maps!.toJson();
    }
    data['population'] = population;
    data['fifa'] = fifa;
    if (car != null) {
      data['car'] = car!.toJson();
    }
    data['timezones'] = timezones;
    data['continents'] = continents;
    if (flags != null) {
      data['flags'] = flags!.toJson();
    }
    if (coatOfArms != null) {
      data['coatOfArms'] = coatOfArms!.toJson();
    }
    data['startOfWeek'] = startOfWeek;
    if (capitalInfo != null) {
      data['capitalInfo'] = capitalInfo!.toJson();
    }
    if (postalCode != null) {
      data['postalCode'] = postalCode!.toJson();
    }
    return data;
  }
}

class Name {
  String? common;
  String? official;
  NativeName? nativeName;

  Name({this.common, this.official, this.nativeName});

  Name.fromJson(Map<String, dynamic> json) {
    common = json['common'];
    official = json['official'];
    nativeName = json['nativeName'] != null
        ? NativeName.fromJson(json['nativeName'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['common'] = common;
    data['official'] = official;
    if (nativeName != null) {
      data['nativeName'] = nativeName!.toJson();
    }
    return data;
  }
}

class NativeName {
  Cat? cat;

  NativeName({this.cat});

  NativeName.fromJson(Map<String, dynamic> json) {
    cat = json['cat'] != null ? Cat.fromJson(json['cat']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (cat != null) {
      data['cat'] = cat!.toJson();
    }
    return data;
  }
}

class Cat {
  String? official;
  String? common;

  Cat({this.official, this.common});

  Cat.fromJson(Map<String, dynamic> json) {
    official = json['official'];
    common = json['common'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['official'] = official;
    data['common'] = common;
    return data;
  }
}

class Currencies {
  EUR? eUR;

  Currencies({this.eUR});

  Currencies.fromJson(Map<String, dynamic> json) {
    eUR = json['EUR'] != null ? EUR.fromJson(json['EUR']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (eUR != null) {
      data['EUR'] = eUR!.toJson();
    }
    return data;
  }
}

class EUR {
  String? name;
  String? symbol;

  EUR({this.name, this.symbol});

  EUR.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    symbol = json['symbol'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['symbol'] = symbol;
    return data;
  }
}

class Idd {
  String? root;
  List<dynamic>? suffixes;

  Idd({this.root, this.suffixes});

  Idd.fromJson(Map<String, dynamic> json) {
    root = json['root'];
    //suffixes = json['suffixes'].cast<dynamic>();
    suffixes = json["suffixes"] == null
        ? []
        : List<dynamic>.from(json["suffixes"].map((x) => x));
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['root'] = root;
    data['suffixes'] = suffixes;
    return data;
  }
}

class Languages {
  String? cat;

  Languages({this.cat});

  Languages.fromJson(Map<String, dynamic> json) {
    cat = json['cat'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['cat'] = cat;
    return data;
  }
}

class Translations {
  Cat? ara;
  Cat? bre;
  Cat? ces;
  Cat? cym;
  Cat? deu;
  Cat? est;
  Cat? fin;
  Eng? fra;
  Cat? hrv;
  Cat? hun;
  Cat? ita;
  Cat? jpn;
  Cat? kor;
  Cat? nld;
  Cat? per;
  Cat? pol;
  Cat? por;
  Cat? rus;
  Cat? slk;
  Cat? spa;
  Cat? srp;
  Cat? swe;
  Cat? tur;
  Cat? urd;
  Cat? zho;

  Translations(
      {this.ara,
      this.bre,
      this.ces,
      this.cym,
      this.deu,
      this.est,
      this.fin,
      this.fra,
      this.hrv,
      this.hun,
      this.ita,
      this.jpn,
      this.kor,
      this.nld,
      this.per,
      this.pol,
      this.por,
      this.rus,
      this.slk,
      this.spa,
      this.srp,
      this.swe,
      this.tur,
      this.urd,
      this.zho});

  Translations.fromJson(Map<String, dynamic> json) {
    ara = json['ara'] != null ? Cat.fromJson(json['ara']) : null;
    bre = json['bre'] != null ? Cat.fromJson(json['bre']) : null;
    ces = json['ces'] != null ? Cat.fromJson(json['ces']) : null;
    cym = json['cym'] != null ? Cat.fromJson(json['cym']) : null;
    deu = json['deu'] != null ? Cat.fromJson(json['deu']) : null;
    est = json['est'] != null ? Cat.fromJson(json['est']) : null;
    fin = json['fin'] != null ? Cat.fromJson(json['fin']) : null;
    fra = json['fra'] != null ? Eng.fromJson(json['fra']) : null;
    hrv = json['hrv'] != null ? Cat.fromJson(json['hrv']) : null;
    hun = json['hun'] != null ? Cat.fromJson(json['hun']) : null;
    ita = json['ita'] != null ? Cat.fromJson(json['ita']) : null;
    jpn = json['jpn'] != null ? Cat.fromJson(json['jpn']) : null;
    kor = json['kor'] != null ? Cat.fromJson(json['kor']) : null;
    nld = json['nld'] != null ? Cat.fromJson(json['nld']) : null;
    per = json['per'] != null ? Cat.fromJson(json['per']) : null;
    pol = json['pol'] != null ? Cat.fromJson(json['pol']) : null;
    por = json['por'] != null ? Cat.fromJson(json['por']) : null;
    rus = json['rus'] != null ? Cat.fromJson(json['rus']) : null;
    slk = json['slk'] != null ? Cat.fromJson(json['slk']) : null;
    spa = json['spa'] != null ? Cat.fromJson(json['spa']) : null;
    srp = json['srp'] != null ? Cat.fromJson(json['srp']) : null;
    swe = json['swe'] != null ? Cat.fromJson(json['swe']) : null;
    tur = json['tur'] != null ? Cat.fromJson(json['tur']) : null;
    urd = json['urd'] != null ? Cat.fromJson(json['urd']) : null;
    zho = json['zho'] != null ? Cat.fromJson(json['zho']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (ara != null) {
      data['ara'] = ara!.toJson();
    }
    if (bre != null) {
      data['bre'] = bre!.toJson();
    }
    if (ces != null) {
      data['ces'] = ces!.toJson();
    }
    if (cym != null) {
      data['cym'] = cym!.toJson();
    }
    if (deu != null) {
      data['deu'] = deu!.toJson();
    }
    if (est != null) {
      data['est'] = est!.toJson();
    }
    if (fin != null) {
      data['fin'] = fin!.toJson();
    }
    if (fra != null) {
      data['fra'] = fra!.toJson();
    }
    if (hrv != null) {
      data['hrv'] = hrv!.toJson();
    }
    if (hun != null) {
      data['hun'] = hun!.toJson();
    }
    if (ita != null) {
      data['ita'] = ita!.toJson();
    }
    if (jpn != null) {
      data['jpn'] = jpn!.toJson();
    }
    if (kor != null) {
      data['kor'] = kor!.toJson();
    }
    if (nld != null) {
      data['nld'] = nld!.toJson();
    }
    if (per != null) {
      data['per'] = per!.toJson();
    }
    if (pol != null) {
      data['pol'] = pol!.toJson();
    }
    if (por != null) {
      data['por'] = por!.toJson();
    }
    if (rus != null) {
      data['rus'] = rus!.toJson();
    }
    if (slk != null) {
      data['slk'] = slk!.toJson();
    }
    if (spa != null) {
      data['spa'] = spa!.toJson();
    }
    if (srp != null) {
      data['srp'] = srp!.toJson();
    }
    if (swe != null) {
      data['swe'] = swe!.toJson();
    }
    if (tur != null) {
      data['tur'] = tur!.toJson();
    }
    if (urd != null) {
      data['urd'] = urd!.toJson();
    }
    if (zho != null) {
      data['zho'] = zho!.toJson();
    }
    return data;
  }
}

class Demonyms {
  Eng? eng;
  Eng? fra;

  Demonyms({this.eng, this.fra});

  Demonyms.fromJson(Map<String, dynamic> json) {
    eng = json['eng'] != null ? Eng.fromJson(json['eng']) : null;
    fra = json['fra'] != null ? Eng.fromJson(json['fra']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (eng != null) {
      data['eng'] = eng!.toJson();
    }
    if (fra != null) {
      data['fra'] = fra!.toJson();
    }
    return data;
  }
}

class Eng {
  String? f;
  String? m;

  Eng({this.f, this.m});

  Eng.fromJson(Map<String, dynamic> json) {
    f = json['f'];
    m = json['m'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['f'] = f;
    data['m'] = m;
    return data;
  }
}

class Maps {
  String? googleMaps;
  String? openStreetMaps;

  Maps({this.googleMaps, this.openStreetMaps});

  Maps.fromJson(Map<String, dynamic> json) {
    googleMaps = json['googleMaps'];
    openStreetMaps = json['openStreetMaps'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['googleMaps'] = googleMaps;
    data['openStreetMaps'] = openStreetMaps;
    return data;
  }
}

class Car {
  List<dynamic>? signs;
  String? side;

  Car({this.signs, this.side});

  Car.fromJson(Map<String, dynamic> json) {
    // signs = json['signs'].cast<dynamic>();
    signs = json["signs"] == null
        ? []
        : List<dynamic>.from(json["signs"].map((x) => x));
    side = json['side'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['signs'] = signs;
    data['side'] = side;
    return data;
  }
}

class Flags {
  String? png;
  String? svg;
  String? alt;

  Flags({this.png, this.svg, this.alt});

  Flags.fromJson(Map<String, dynamic> json) {
    png = json['png'];
    svg = json['svg'];
    alt = json['alt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['png'] = png;
    data['svg'] = svg;
    data['alt'] = alt;
    return data;
  }
}

class CoatOfArms {
  String? png;
  String? svg;

  CoatOfArms({this.png, this.svg});

  CoatOfArms.fromJson(Map<String, dynamic> json) {
    png = json['png'];
    svg = json['svg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['png'] = png;
    data['svg'] = svg;
    return data;
  }
}

class CapitalInfo {
  List<dynamic>? latlng;

  CapitalInfo({this.latlng});

  CapitalInfo.fromJson(Map<String, dynamic> json) {
    //latlng = json['latlng'].cast<double>();
    latlng = json["latlng"] == null
        ? []
        : List<dynamic>.from(json["latlng"].map((x) => x));
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['latlng'] = latlng;
    return data;
  }
}

class PostalCode {
  String? format;
  String? regex;

  PostalCode({this.format, this.regex});

  PostalCode.fromJson(Map<String, dynamic> json) {
    format = json['format'];
    regex = json['regex'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['format'] = format;
    data['regex'] = regex;
    return data;
  }
}
