/// statuscode : "0"
/// message : "Success"
/// data : [{"jobTitle":"XYZ - Handicrafts","deadline":"12/14/2020","recruitingCompany'sProfile":"XYZ Ltd.","jobDetails":{"Title":"XYZ- Handicrafts","LastDate":"14th December 2020","CompanyName":"XYZ Ltd.","ApplyInstruction":"<br><br> Apply through any of following options <hr><br><br><STRONG>Email:</  STRONG> Send your CV to <strong> salvin.bdjobs.com </strong>"},"logo":"https://corporate.bdjobs.com/logos/15131.jpg","IsFeatured":true,"minExperience":1,"maxExperience":2,"minSalary":"","maxSalary":""},{"jobTitle":"ABC-AGRO","deadline":"12/12/2020","recruitingCompany'sProfile":"ABC Ltd.","jobDetails":{"Title":"XYZ- Handicrafts","LastDate":"12th December 2020","CompanyName":"ABC Ltd.","ApplyInstruction":"<br><br> Apply through any of following options <hr><br><br><STRONG>Email:</  STRONG> Send your CV to <strong> salvin.bdjobs.com </strong>"},"logo":"https://corporate.bdjobs.com/logos/15131.jpg","IsFeatured":false,"minExperience":null,"maxExperience":null,"minSalary":"10,000","maxSalary":""},{"jobTitle":"KK-Pharmacy","deadline":"12/25/2020","recruitingCompany'sProfile":"KK Ltd.","jobDetails":{"Title":"KK-Pharmacy","LastDate":"25th December 2020","CompanyName":"KK Ltd.","ApplyInstruction":"<br><br> Apply through any of following options <hr><br><br><STRONG>Email:</  STRONG> Send your CV to <strong> salvin.bdjobs.com </strong>"},"logo":"https://corporate.bdjobs.com/logos/15131.jpg","IsFeatured":false,"minExperience":3,"maxExperience":null,"minSalary":"","maxSalary":"100000"},{"jobTitle":"Grad I Software Engineer","deadline":"1/15/2021","recruitingCompany'sProfile":"Namoo Ltd.","jobDetails":{"Title":"Grad I Software Engineer","LastDate":"15th January 2021","CompanyName":"NAmoo Ltd.","ApplyInstruction":"<br><br> Apply through any of following options <hr><br><br><STRONG>Email:</  STRONG> Send your CV to <strong> salvin.bdjobs.com </strong>"},"logo":"https://corporate.bdjobs.com/logos/15131.jpg","IsFeatured":true,"minExperience":1,"maxExperience":null,"minSalary":"15000","maxSalary":""},{"jobTitle":"Car Mechanic","deadline":"12/31/2020","recruitingCompany'sProfile":"CB Ltd.","jobDetails":{"Title":"Car Mechanic","LastDate":"31st December 2020","CompanyName":"CB Ltd.","ApplyInstruction":"<br><br> Apply through any of following options <hr><br><br><STRONG>Email:</  STRONG> Send your CV to <strong> salvin.bdjobs.com </strong>"},"logo":"https://corporate.bdjobs.com/logos/15131.jpg","IsFeatured":false,"minExperience":null,"maxExperience":null,"minSalary":"","maxSalary":"20000"},{"jobTitle":"DD-Pharmacy","deadline":"2/25/2021","recruitingCompany'sProfile":"DD Ltd.","jobDetails":{"Title":"DD-Pharmacy","LastDate":"25th February 2021","CompanyName":"DD Ltd.","ApplyInstruction":"<br><br> Apply through any of following options <hr><br><br><STRONG>Email:</  STRONG> Send your CV to <strong> salvin.bdjobs.com </strong>"},"logo":"https://corporate.bdjobs.com/logos/15131.jpg","IsFeatured":false,"minExperience":3,"maxExperience":null,"minSalary":"","maxSalary":"100000"},{"jobTitle":"English Translator","deadline":"1/1/2021","recruitingCompany'sProfile":"Bighit Ent.","jobDetails":{"Title":"English Translator","LastDate":"1st January 2021","CompanyName":"Bighit Ent.","ApplyInstruction":"<br><br> Apply through any of following options <hr><br><br><STRONG>Email:</  STRONG> Send your CV to <strong> salvin.bdjobs.com </strong>"},"logo":"https://corporate.bdjobs.com/logos/15131.jpg","IsFeatured":true,"minExperience":1,"maxExperience":null,"minSalary":"5,000","maxSalary":""},{"jobTitle":"News Presenter","deadline":"1/11/2021","recruitingCompany'sProfile":"Hawa TV","jobDetails":{"Title":"News Presenter","LastDate":"11th January 2021","CompanyName":"Hawa TV","ApplyInstruction":"<br><br> Apply through any of following options <hr><br><br><STRONG>Email:</  STRONG> Send your CV to <strong> salvin.bdjobs.com </strong>"},"logo":"https://corporate.bdjobs.com/logos/15131.jpg","IsFeatured":false,"minExperience":1,"maxExperience":3,"minSalary":"5,000","maxSalary":"15,000"},{"jobTitle":"Social Influencer","deadline":"1/15/2021","recruitingCompany'sProfile":"","jobDetails":{"Title":"Social Influencer","LastDate":"11th January 2021","CompanyName":"","ApplyInstruction":"<br><br> Apply through any of following options <hr><br><br><STRONG>Email:</  STRONG> Send your CV to <strong> salvin.bdjobs.com </strong>"},"logo":"https://corporate.bdjobs.com/logos/15131.jpg","IsFeatured":false,"minExperience":null,"maxExperience":null,"minSalary":"","maxSalary":"10,000"},{"jobTitle":"Brand Executive","deadline":"12/15/2020","recruitingCompany'sProfile":"","jobDetails":{"Title":"Brand Executive","LastDate":"15th December 2020","CompanyName":"","ApplyInstruction":"<br><br> Apply through any of following options <hr><br><br><STRONG>Email:</  STRONG> Send your CV to <strong> salvin.bdjobs.com </strong>"},"logo":"https://corporate.bdjobs.com/logos/15131.jpg","IsFeatured":true,"minExperience":null,"maxExperience":5,"minSalary":"8,000","maxSalary":"10,000"}]
/// common : {"total_records_found":10,"totalpages":1}

class JobResponse {
  JobResponse({
      String? statuscode, 
      String? message, 
      List<Data>? data, 
      Common? common,}){
    _statuscode = statuscode;
    _message = message;
    _data = data;
    _common = common;
}

  JobResponse.fromJson(dynamic json) {
    _statuscode = json['statuscode'];
    _message = json['message'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
    _common = json['common'] != null ? Common.fromJson(json['common']) : null;
  }
  String? _statuscode;
  String? _message;
  List<Data>? _data;
  Common? _common;
JobResponse copyWith({  String? statuscode,
  String? message,
  List<Data>? data,
  Common? common,
}) => JobResponse(  statuscode: statuscode ?? _statuscode,
  message: message ?? _message,
  data: data ?? _data,
  common: common ?? _common,
);
  String? get statuscode => _statuscode;
  String? get message => _message;
  List<Data>? get data => _data;
  Common? get common => _common;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['statuscode'] = _statuscode;
    map['message'] = _message;
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    if (_common != null) {
      map['common'] = _common?.toJson();
    }
    return map;
  }

}

/// total_records_found : 10
/// totalpages : 1

class Common {
  Common({
      int? totalRecordsFound, 
      int? totalpages,}){
    _totalRecordsFound = totalRecordsFound;
    _totalpages = totalpages;
}

  Common.fromJson(dynamic json) {
    _totalRecordsFound = json['total_records_found'];
    _totalpages = json['totalpages'];
  }
  int? _totalRecordsFound;
  int? _totalpages;
Common copyWith({  int? totalRecordsFound,
  int? totalpages,
}) => Common(  totalRecordsFound: totalRecordsFound ?? _totalRecordsFound,
  totalpages: totalpages ?? _totalpages,
);
  int? get totalRecordsFound => _totalRecordsFound;
  int? get totalpages => _totalpages;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['total_records_found'] = _totalRecordsFound;
    map['totalpages'] = _totalpages;
    return map;
  }

}

/// jobTitle : "XYZ - Handicrafts"
/// deadline : "12/14/2020"
/// recruitingCompany'sProfile : "XYZ Ltd."
/// jobDetails : {"Title":"XYZ- Handicrafts","LastDate":"14th December 2020","CompanyName":"XYZ Ltd.","ApplyInstruction":"<br><br> Apply through any of following options <hr><br><br><STRONG>Email:</  STRONG> Send your CV to <strong> salvin.bdjobs.com </strong>"}
/// logo : "https://corporate.bdjobs.com/logos/15131.jpg"
/// IsFeatured : true
/// minExperience : 1
/// maxExperience : 2
/// minSalary : ""
/// maxSalary : ""

class Data {
  Data({
      String? jobTitle, 
      String? deadline, 
      String? recruitingCompanysProfile, 
      JobDetails? jobDetails, 
      String? logo, 
      bool? isFeatured, 
      int? minExperience, 
      int? maxExperience, 
      String? minSalary, 
      String? maxSalary,}){
    _jobTitle = jobTitle;
    _deadline = deadline;
    _recruitingCompanysProfile = recruitingCompanysProfile;
    _jobDetails = jobDetails;
    _logo = logo;
    _isFeatured = isFeatured;
    _minExperience = minExperience;
    _maxExperience = maxExperience;
    _minSalary = minSalary;
    _maxSalary = maxSalary;
}

  Data.fromJson(dynamic json) {
    _jobTitle = json['jobTitle'];
    _deadline = json['deadline'];
    _recruitingCompanysProfile = json['recruitingCompany\'sProfile'];
    _jobDetails = json['jobDetails'] != null ? JobDetails.fromJson(json['jobDetails']) : null;
    _logo = json['logo'];
    _isFeatured = json['IsFeatured'];
    _minExperience = json['minExperience'];
    _maxExperience = json['maxExperience'];
    _minSalary = json['minSalary'];
    _maxSalary = json['maxSalary'];
  }
  String? _jobTitle;
  String? _deadline;
  String? _recruitingCompanysProfile;
  JobDetails? _jobDetails;
  String? _logo;
  bool? _isFeatured;
  int? _minExperience;
  int? _maxExperience;
  String? _minSalary;
  String? _maxSalary;
Data copyWith({  String? jobTitle,
  String? deadline,
  String? recruitingCompanysProfile,
  JobDetails? jobDetails,
  String? logo,
  bool? isFeatured,
  int? minExperience,
  int? maxExperience,
  String? minSalary,
  String? maxSalary,
}) => Data(  jobTitle: jobTitle ?? _jobTitle,
  deadline: deadline ?? _deadline,
  recruitingCompanysProfile: recruitingCompanysProfile ?? _recruitingCompanysProfile,
  jobDetails: jobDetails ?? _jobDetails,
  logo: logo ?? _logo,
  isFeatured: isFeatured ?? _isFeatured,
  minExperience: minExperience ?? _minExperience,
  maxExperience: maxExperience ?? _maxExperience,
  minSalary: minSalary ?? _minSalary,
  maxSalary: maxSalary ?? _maxSalary,
);
  String? get jobTitle => _jobTitle;
  String? get deadline => _deadline;
  String? get recruitingCompanysProfile => _recruitingCompanysProfile;
  JobDetails? get jobDetails => _jobDetails;
  String? get logo => _logo;
  bool? get isFeatured => _isFeatured;
  int? get minExperience => _minExperience;
  int? get maxExperience => _maxExperience;
  String? get minSalary => _minSalary;
  String? get maxSalary => _maxSalary;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['jobTitle'] = _jobTitle;
    map['deadline'] = _deadline;
    map['recruitingCompany\'sProfile'] = _recruitingCompanysProfile;
    if (_jobDetails != null) {
      map['jobDetails'] = _jobDetails?.toJson();
    }
    map['logo'] = _logo;
    map['IsFeatured'] = _isFeatured;
    map['minExperience'] = _minExperience;
    map['maxExperience'] = _maxExperience;
    map['minSalary'] = _minSalary;
    map['maxSalary'] = _maxSalary;
    return map;
  }

}

/// Title : "XYZ- Handicrafts"
/// LastDate : "14th December 2020"
/// CompanyName : "XYZ Ltd."
/// ApplyInstruction : "<br><br> Apply through any of following options <hr><br><br><STRONG>Email:</  STRONG> Send your CV to <strong> salvin.bdjobs.com </strong>"

class JobDetails {
  JobDetails({
      String? title, 
      String? lastDate, 
      String? companyName, 
      String? applyInstruction,}){
    _title = title;
    _lastDate = lastDate;
    _companyName = companyName;
    _applyInstruction = applyInstruction;
}

  JobDetails.fromJson(dynamic json) {
    _title = json['Title'];
    _lastDate = json['LastDate'];
    _companyName = json['CompanyName'];
    _applyInstruction = json['ApplyInstruction'];
  }
  String? _title;
  String? _lastDate;
  String? _companyName;
  String? _applyInstruction;
JobDetails copyWith({  String? title,
  String? lastDate,
  String? companyName,
  String? applyInstruction,
}) => JobDetails(  title: title ?? _title,
  lastDate: lastDate ?? _lastDate,
  companyName: companyName ?? _companyName,
  applyInstruction: applyInstruction ?? _applyInstruction,
);
  String? get title => _title;
  String? get lastDate => _lastDate;
  String? get companyName => _companyName;
  String? get applyInstruction => _applyInstruction;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Title'] = _title;
    map['LastDate'] = _lastDate;
    map['CompanyName'] = _companyName;
    map['ApplyInstruction'] = _applyInstruction;
    return map;
  }

}